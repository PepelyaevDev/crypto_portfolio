import 'package:crypto_portfolio/application/app/design_system/educational_popups/news_source_popup.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/update_data_snack_bar.dart';
import 'package:crypto_portfolio/common/design_system/custom_widgets/primary_container.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/common/utils/extensions/date_time_extension.dart';
import 'package:crypto_portfolio/presentation/news/bloc/news_bloc/news_bloc.dart';
import 'package:crypto_portfolio/presentation/news/widgets/no_currencies_widget.dart';
import 'package:crypto_portfolio/domain/entity/failure/extensions/get_message.dart';
import 'package:crypto_portfolio/domain/entity/news/news_entity.dart';
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

  @override
  void initState() {
    bloc = context.read<NewsBloc>()
      ..add(NewsEvent.init(category: widget.category, symbol: widget.symbol));
    listener = () {
      if (widget.controller.position.maxScrollExtent == widget.controller.position.pixels) {
        bloc.state.mapOrNull(
          error: (state) {
            if (state.news != null && state.news!.list.isNotEmpty) {
              bloc.add(NewsEvent.update(oldList: state.news!));
            }
          },
          success: (state) => bloc.add(NewsEvent.update(oldList: state.news)),
        );
      }
    };
    widget.controller.addListener(listener);
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.removeListener(listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsBloc, NewsState>(
      bloc: bloc,
      listener: (_, state) {
        if (state.loadedState) {
          UpdateDataSnackBar.show(
            context: context,
            error: state.error,
          );
        }
      },
      builder: (context, state) {
        return state.when(
          loading: () => Padding(
            padding: const EdgeInsets.all(20),
            child: Center(child: CircularProgressIndicator()),
          ),
          noCoins: () => NoCurrenciesWidget(),
          success: (news, _) => _NewsList(news: news),
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
          style: context.styles.bodySmall!.copyWith(
            color: context.colors.error,
          ),
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
                  style: context.styles.bodySmall!.copyWith(
                    color: context.colors.error,
                  ),
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
      child: PrimaryContainer(
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
                      style: context.styles.labelSmall!.copyWith(
                        color: context.colors.primary,
                      ),
                    );
                  }).toList(),
                ),
              ),
            if (widget.news.currencies.isNotEmpty) SizedBox(height: 7),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.0),
              child: Text(
                widget.news.title,
                style: context.styles.labelMedium,
              ),
            ),
            Html(data: widget.news.description),
            Padding(
              padding: const EdgeInsets.only(left: 7.0, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          '${context.localization.author}:',
                          style: context.styles.bodySmall,
                        ),
                        SizedBox(width: 5),
                        _NewsLinkButton(
                          onPressed: () {
                            launchUrl(
                              Uri.parse(widget.news.sourceUrl),
                              mode: LaunchMode.externalApplication,
                            );
                          },
                          text: widget.news.sourceTitle,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    widget.news.createdTime.dateLong(context),
                    style: context.styles.bodySmall,
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
                    style: context.styles.bodySmall,
                  ),
                  SizedBox(width: 5),
                  _NewsLinkButton(
                    onPressed: () {
                      NewsSourcePopup.show(context, widget.news.url);
                    },
                    text: widget.news.url,
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

class _NewsLinkButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const _NewsLinkButton({
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.centerLeft,
        child: TextButton(
          style: TextButton.styleFrom(
              minimumSize: Size.zero,
              padding: EdgeInsets.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              textStyle: context.styles.labelSmall!.copyWith(
                color: context.colors.primary,
              )),
          onPressed: onPressed,
          child: Text(
            text,
            softWrap: false,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
