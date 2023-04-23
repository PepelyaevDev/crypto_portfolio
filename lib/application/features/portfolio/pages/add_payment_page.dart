import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/update_data_snack_bar.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/extension/nullable_string_extension.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/custom_text_field.dart';
import 'package:crypto_portfolio/application/features/portfolio/bloc/add_payment_bloc/add_payment_bloc.dart';
import 'package:crypto_portfolio/application/features/portfolio/widgets/select_coin_widget.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/failure/extensions/get_message.dart';
import 'package:crypto_portfolio/domain/repo/market_repo.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddPaymentPage extends StatefulWidget {
  final String? coinID;

  const AddPaymentPage({this.coinID});

  @override
  State<AddPaymentPage> createState() => _AddPaymentPageState();
}

class _AddPaymentPageState extends State<AddPaymentPage> {
  final _formKey = GlobalKey<FormState>();
  String _paymentType = PaymentType.deposit;
  final TextEditingController moneyController = TextEditingController();
  final TextEditingController coinsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AddPaymentBloc(
        context.read<MarketRepo>(),
        context.read<PortfolioRepo>(),
      )..add(
          AddPaymentEvent.getCoin(widget.coinID),
        ),
      child: Builder(builder: (context) {
        return BlocListener<AddPaymentBloc, AddPaymentState>(
          listener: (context, state) {
            state.maybeMap(
              error: (e) {
                UpdateDataSnackBar.show(
                  context: context,
                  error: true,
                  errorInfo: e.error.getMessage(context),
                );
              },
              orElse: () => null,
            );
          },
          child: Scaffold(
            appBar: AppBar(
              shadowColor: AppColors.blue,
              backgroundColor: AppColors.white,
              foregroundColor: AppColors.black,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    SizedBox(height: 20),
                    SelectCoinWidget(),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        _paymentTypeButton(PaymentType.deposit, context.localization.buy),
                        SizedBox(width: 10),
                        _paymentTypeButton(PaymentType.withdraw, context.localization.sell),
                      ],
                    ),
                    SizedBox(height: 20),
                    CustomTextField(
                      suffixText: 'USD',
                      labelText: context.localization.amountOfMoney,
                      keyboardType: TextInputType.numberWithOptions(),
                      controller: moneyController,
                      validator: (value) => _validator(value, context),
                    ),
                    SizedBox(height: 20),
                    BlocBuilder<AddPaymentBloc, AddPaymentState>(
                      builder: (context, state) {
                        final String? suffix = state.maybeMap(
                          success: (state) => state.coin.symbol.toUpperCase(),
                          orElse: () => null,
                        );
                        return CustomTextField(
                          suffixText: suffix,
                          labelText: context.localization.numberOfCoins,
                          keyboardType: TextInputType.numberWithOptions(),
                          controller: coinsController,
                          validator: (value) => _validator(value, context),
                        );
                      },
                    ),
                    SizedBox(height: 10),
                    BlocBuilder<AddPaymentBloc, AddPaymentState>(
                      builder: (context, state) {
                        return ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              state.maybeMap(
                                success: (state) {
                                  context.read<AddPaymentBloc>().add(
                                        AddPaymentEvent.updateHistory(
                                          paymentEntity: PaymentEntity(
                                            id: state.coin.id,
                                            dateTime: DateTime.now(),
                                            type: _paymentType,
                                            amount: moneyController.text.toDouble,
                                            numberOfCoins: coinsController.text.toDouble,
                                          ),
                                          coin: state.coin,
                                        ),
                                      );
                                  Navigator.of(context).pop();
                                },
                                orElse: () => null,
                              );
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              state.maybeMap(
                                success: (_) => AppColors.blue,
                                orElse: () => AppColors.grey,
                              ),
                            ),
                          ),
                          child: Text(context.localization.addPayment),
                        );
                      },
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget _paymentTypeButton(String value, String title) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(4),
        onTap: () {
          setState(() {
            _paymentType = value;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: _paymentType == value ? AppColors.blue : AppColors.grey,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                title,
                style: AppStyles.normal12.copyWith(
                  color: _paymentType == value ? AppColors.black : AppColors.grey,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  String? _validator(String? value, BuildContext context) {
    if (value == null) return context.localization.validatorEmptyField;
    if (value.isEmpty) return context.localization.validatorEmptyField;
    try {
      value.toDouble;
      return null;
    } catch (e) {
      return context.localization.validatorInvalidNumber;
    }
  }

  @override
  void dispose() {
    moneyController.dispose();
    coinsController.dispose();
    super.dispose();
  }
}
