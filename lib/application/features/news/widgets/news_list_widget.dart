import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/decorations.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/update_data_snack_bar.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/extension/date_time_extension.dart';
import 'package:crypto_portfolio/application/features/news/bloc/news_bloc.dart';
import 'package:crypto_portfolio/application/features/news/widgets/no_currencies_widget.dart';
import 'package:crypto_portfolio/domain/entity/failure/extensions/get_message.dart';
import 'package:crypto_portfolio/domain/entity/news/news_entity.dart';
import 'package:crypto_portfolio/domain/repo/locale_repo.dart';
import 'package:crypto_portfolio/domain/repo/news_repo.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:crypto_portfolio/domain/repo/watchlist_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsListWidget extends StatefulWidget {
  final ScrollController controller;
  final NewsCategory category;
  final String? symbol;

  const NewsListWidget({
    required this.controller,
    required this.category,
    this.symbol,
  });

  @override
  State<NewsListWidget> createState() => _NewsListWidgetState();
}

class _NewsListWidgetState extends State<NewsListWidget> {
  late final NewsBloc bloc;
  late final void Function() listener;

  void _init() {
    bloc.add(
      NewsEvent.init(
        category: widget.category,
        locale: context.localization.localeName,
        symbol: widget.symbol,
      ),
    );
  }

  @override
  void initState() {
    bloc = NewsBloc(
      context.read<NewsRepo>(),
      context.read<LocaleRepo>(),
      context.read<PortfolioRepo>(),
      context.read<WatchlistRepo>(),
    );
    listener = () {
      if (widget.controller.position.maxScrollExtent == widget.controller.position.pixels) {
        bloc.state.whenOrNull(
          success: (state) => bloc.add(NewsEvent.update(oldList: state)),
        );
      }
    };
    widget.controller.addListener(listener);
    WidgetsBinding.instance.addPostFrameCallback((_) => _init());
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.removeListener(listener);
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsBloc, NewsState>(
      bloc: bloc,
      listener: (_, state) {
        state.mapOrNull(
          error: (state) {
            UpdateDataSnackBar.show(
              context: context,
              error: true,
              errorInfo: state.error.getMessage(context),
            );
          },
        );
      },
      builder: (context, state) {
        return state.when(
          loading: () => Padding(
            padding: const EdgeInsets.all(20),
            child: Center(child: CircularProgressIndicator()),
          ),
          noCoins: () => NoCurrenciesWidget(),
          success: (news) => _NewsList(news: news),
          error: (news, error) => _NewsList(news: news, error: error.getMessage(context)),
        );
      },
    );
  }
}

class _ErrorMessage extends StatelessWidget {
  final String message;
  const _ErrorMessage(this.message);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          message,
          style: AppStyles.normal14.copyWith(color: AppColors.redLight),
        ),
      ),
    );
  }
}

class _NewsList extends StatelessWidget {
  final NewsListEntity? news;
  final String? error;
  const _NewsList({this.news, this.error});

  @override
  Widget build(BuildContext context) {
    if (news == null && error != null) {
      return _ErrorMessage(error!);
    }
    if (news != null) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ...news!.list.map((e) => _NewsWidget(e)).toList(),
          if (error != null) _ErrorMessage(error!),
          if (news!.nextPage != null && error == null)
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(child: CircularProgressIndicator()),
            ),
          if (news!.list.isEmpty && news!.nextPage == null && error == null)
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  context.localization.newsNotFound,
                  style: AppStyles.normal14.copyWith(color: AppColors.redLight),
                ),
              ),
            )
        ],
      );
    }
    return SizedBox();
  }
}

class _NewsWidget extends StatefulWidget {
  final NewsEntity news;
  const _NewsWidget(this.news);

  @override
  State<_NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<_NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: AppDecorations.blueBorderDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.news.image != null)
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(3)),
                child: Image.network(
                  widget.news.image!,
                  errorBuilder: (_, __, ___) => SizedBox(),
                ),
              ),
            SizedBox(height: 10),
            if (widget.news.currencies.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7.0),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: widget.news.currencies.map((e) {
                    return Text(
                      e,
                      style: AppStyles.bold12.copyWith(color: AppColors.greenLight),
                    );
                  }).toList(),
                ),
              ),
            if (widget.news.currencies.isNotEmpty) SizedBox(height: 7),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.0),
              child: Text(
                widget.news.title,
                style: AppStyles.bold16,
              ),
            ),
            Html(data: widget.news.description),
            Padding(
              padding: const EdgeInsets.only(left: 7.0, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${context.localization.author}:',
                        style: AppStyles.normal14.copyWith(color: AppColors.grayDark),
                      ),
                      GestureDetector(
                        onTap: () {
                          launchUrl(
                            Uri.parse(widget.news.sourceUrl),
                            mode: LaunchMode.externalApplication,
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            widget.news.sourceTitle,
                            style: AppStyles.normal14.copyWith(color: AppColors.primary),
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    widget.news.createdTime.dateLong(context),
                    style: AppStyles.normal14.copyWith(color: AppColors.grayDark),
                    textAlign: TextAlign.right,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7.0, right: 15),
              child: Row(
                children: [
                  Text(
                    '${context.localization.source}:',
                    style: AppStyles.normal14.copyWith(color: AppColors.grayDark),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        launchUrl(
                          Uri.parse(widget.news.url),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          widget.news.url,
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          style: AppStyles.normal14.copyWith(color: AppColors.primary),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
