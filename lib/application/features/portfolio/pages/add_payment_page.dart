import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/consts.dart';
import 'package:crypto_portfolio/application/app/design_system/educational_popups/transaction_amount_popup.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/update_data_snack_bar.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/extension/date_time_extension.dart';
import 'package:crypto_portfolio/application/app/extension/double_extension.dart';
import 'package:crypto_portfolio/application/app/extension/nullable_string_extension.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/custom_text_field.dart';
import 'package:crypto_portfolio/application/features/portfolio/bloc/add_payment_bloc/add_payment_bloc.dart';
import 'package:crypto_portfolio/application/features/portfolio/widgets/select_coin_widget.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/coin_data.dart';
import 'package:crypto_portfolio/domain/repo/market_repo.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddPaymentPage extends StatefulWidget {
  final CoinId? id;

  const AddPaymentPage({this.id});

  @override
  State<AddPaymentPage> createState() => _AddPaymentPageState();
}

class _AddPaymentPageState extends State<AddPaymentPage> {
  final _formKey = GlobalKey<FormState>();
  String _paymentType = PaymentType.buy;
  final TextEditingController moneyController = TextEditingController();
  final TextEditingController coinsController = TextEditingController();
  DateTime dateTime = DateTime.now();
  bool _amountAfterPayment = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AddPaymentBloc(
        context.read<MarketRepo>(),
        context.read<PortfolioRepo>(),
      )..add(
          AddPaymentEvent.getCoin(widget.id),
        ),
      child: Builder(builder: (context) {
        return BlocListener<AddPaymentBloc, AddPaymentState>(
          listener: (context, state) {
            state.mapOrNull(
              error: (e) {
                UpdateDataSnackBar.show(
                  context: context,
                  error: e.error,
                );
              },
            );
          },
          child: Scaffold(
            appBar: AppBar(
              shadowColor: AppColors.primary,
              backgroundColor: AppColors.white,
              foregroundColor: AppColors.blackLight,
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
                        _paymentTypeButton(PaymentType.buy, context.localization.buy),
                        SizedBox(width: 10),
                        _paymentTypeButton(PaymentType.sell, context.localization.sell),
                      ],
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      borderRadius: BorderRadius.circular(5),
                      onTap: () {
                        setState(() {
                          _amountAfterPayment = !_amountAfterPayment;
                        });
                        if (_amountAfterPayment) {
                          TransactionAmountPopup.show(context, true);
                        }
                      },
                      child: Row(
                        children: [
                          Icon(
                            _amountAfterPayment ? Icons.check_box : Icons.check_box_outline_blank,
                            color: AppColors.primary,
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              context.localization.enterBalanceAfterTransaction,
                              style: AppStyles.normal14,
                            ),
                          ),
                          InkWell(
                            borderRadius: BorderRadius.circular(10),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Icon(
                                Icons.question_mark,
                                color: AppColors.grayDark,
                                size: 20,
                              ),
                            ),
                            onTap: () {
                              TransactionAmountPopup.show(context, false);
                            },
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    BlocBuilder<AddPaymentBloc, AddPaymentState>(
                      builder: (context, state) {
                        final String? suffix = state.maybeMap(
                          success: (state) => state.coin.id.symbol,
                          orElse: () => null,
                        );
                        final String description = switch (_paymentType) {
                          PaymentType.buy => context.localization.purchased,
                          PaymentType.sell => context.localization.sold,
                          _ => emptyString,
                        };
                        return CustomTextField(
                          suffixText: suffix,
                          labelText: _amountAfterPayment
                              ? context.localization.balanceAfterTransaction
                              : '${context.localization.numberOfCoins} ($description)',
                          keyboardType: TextInputType.numberWithOptions(decimal: true),
                          controller: coinsController,
                          validator: (value) => _coinsValidator(
                            value,
                            state.maybeMap(success: (state) => state.coin, orElse: () => null),
                            context,
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 20),
                    CustomTextField(
                      suffixText: 'USD',
                      labelText: context.localization.amountOfMoney,
                      keyboardType: TextInputType.numberWithOptions(decimal: true),
                      controller: moneyController,
                      validator: (value) => _baseValidator(value, context),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: _DatePickerItem(
                            dateTime: dateTime.dateLong(context),
                            onTap: () => _showDialog(
                              CupertinoDatePicker(
                                initialDateTime: dateTime,
                                mode: CupertinoDatePickerMode.date,
                                use24hFormat: true,
                                onDateTimeChanged: (DateTime newDate) {
                                  setState(() => dateTime = newDate);
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 3,
                          child: _DatePickerItem(
                            dateTime: dateTime.time,
                            onTap: () => _showDialog(
                              CupertinoDatePicker(
                                initialDateTime: dateTime,
                                mode: CupertinoDatePickerMode.time,
                                use24hFormat: true,
                                onDateTimeChanged: (DateTime newTime) {
                                  setState(() => dateTime = newTime);
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    BlocBuilder<AddPaymentBloc, AddPaymentState>(
                      builder: (context, state) {
                        return ElevatedButton(
                          onPressed: state.maybeMap(
                            success: (state) {
                              return () {
                                if (_formKey.currentState!.validate()) {
                                  final holdings = state.coin.holdings;
                                  final enteredNumber = coinsController.text.toDouble;
                                  final double numberOfCoins = switch (_amountAfterPayment) {
                                    true => switch (_paymentType) {
                                        PaymentType.buy => enteredNumber.subtractNumber(holdings),
                                        PaymentType.sell => holdings.subtractNumber(enteredNumber),
                                        _ => 0,
                                      },
                                    false => enteredNumber,
                                  };
                                  context.read<AddPaymentBloc>().add(
                                        AddPaymentEvent.updateHistory(
                                          paymentEntity: PaymentEntity(
                                            id: state.coin.id,
                                            dateTime: dateTime,
                                            type: _paymentType,
                                            amount: moneyController.text.toDouble,
                                            numberOfCoins: numberOfCoins,
                                          ),
                                          coin: state.coin,
                                        ),
                                      );
                                  Navigator.of(context).pop();
                                }
                              };
                            },
                            orElse: () => null,
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              state.maybeMap(
                                success: (_) => AppColors.primary,
                                orElse: () => AppColors.gray,
                              ),
                            ),
                          ),
                          child: Text(context.localization.addTransaction),
                        );
                      },
                    ),
                    SizedBox(height: 20),
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
              color: _paymentType == value ? AppColors.primary : AppColors.gray,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                title,
                style: AppStyles.normal14.copyWith(
                  color: _paymentType == value ? AppColors.blackLight : AppColors.gray,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  String? _coinsValidator(String? value, CoinEntity? coin, BuildContext context) {
    if (coin == null) return emptyString;
    final String? firstCheck = _baseValidator(value, context);
    if (firstCheck != null) return firstCheck;
    if (_amountAfterPayment) {
      return _amountAfterTransactionValidator(value, coin, context);
    } else {
      return _amountInTransactionValidator(value, coin, context);
    }
  }

  String? _amountInTransactionValidator(String? value, CoinEntity coin, BuildContext context) {
    if (value.toDouble <= 0) return context.localization.mustBeGreater0;
    if (_paymentType == PaymentType.sell && value.toDouble > coin.holdings) {
      return '${context.localization.youHave} ${coin.holdings.toString()} ${coin.id.symbol}. '
          '${context.localization.cannotSell} $value ${coin.id.symbol}';
    }
    return null;
  }

  String? _amountAfterTransactionValidator(String? value, CoinEntity coin, BuildContext context) {
    final double amount = value.toDouble;
    if (_paymentType == PaymentType.buy) {
      if (amount <= 0) {
        return context.localization.mustBeGreater0;
      }
      if (amount <= coin.holdings) {
        return context.localization.totalBalanceAfterBuyMustBeGreater;
      }
    }
    if (_paymentType == PaymentType.sell) {
      if (amount < 0) {
        return context.localization.balanceLessZero;
      }
      if (amount >= coin.holdings) {
        return context.localization.totalBalanceAfterSellMustBeLess;
      }
    }
    return null;
  }

  String? _baseValidator(String? value, BuildContext context) {
    if (value == null) return context.localization.validatorEmptyField;
    if (value.isEmpty) return context.localization.validatorEmptyField;
    try {
      value.toDouble;
      return null;
    } catch (e) {
      return context.localization.validatorInvalidNumber;
    }
  }

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  @override
  void dispose() {
    moneyController.dispose();
    coinsController.dispose();
    super.dispose();
  }
}

class _DatePickerItem extends StatelessWidget {
  final String dateTime;
  final VoidCallback onTap;

  const _DatePickerItem({
    required this.dateTime,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: AppColors.gray,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13.0),
          child: Center(
            child: Text(
              dateTime,
              style: AppStyles.normal14.copyWith(color: AppColors.primary),
            ),
          ),
        ),
      ),
    );
  }
}
