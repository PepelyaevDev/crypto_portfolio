import 'package:crypto_portfolio/common/design_system/buttons/custom_button.dart';
import 'package:crypto_portfolio/common/utils/consts/app_consts.dart';
import 'package:crypto_portfolio/common/design_system/popups/transaction_amount_popup.dart';
import 'package:crypto_portfolio/common/design_system/custom_widgets/update_data_snack_bar.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/common/utils/extensions/date_time_extension.dart';
import 'package:crypto_portfolio/common/utils/extensions/double_extension.dart';
import 'package:crypto_portfolio/common/utils/extensions/string_extension.dart';
import 'package:crypto_portfolio/common/design_system/custom_widgets/custom_text_field.dart';
import 'package:crypto_portfolio/presentation/portfolio_list/bloc/add_payment_bloc/add_payment_bloc.dart';
import 'package:crypto_portfolio/presentation/portfolio_list/widgets/select_coin_widget.dart';
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
            appBar: AppBar(),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    SizedBox(height: 10),
                    SelectCoinWidget(),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        _paymentTypeButton(PaymentType.buy, context.localization.buy),
                        SizedBox(width: 10),
                        _paymentTypeButton(PaymentType.sell, context.localization.sell),
                      ],
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      borderRadius: BorderRadius.circular(baseBorderRadius),
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
                            color: context.colors.primary,
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              context.localization.enterBalanceAfterTransaction,
                              style: context.styles.bodySmall,
                            ),
                          ),
                          InkWell(
                            borderRadius: BorderRadius.circular(10),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Icon(
                                Icons.question_mark,
                                color: context.colors.onBackground,
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
                        return CustomButton(
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
                                  context.pop();
                                }
                              };
                            },
                            orElse: () => null,
                          ),
                          type: state.maybeMap(
                            success: (_) => ButtonType.primary,
                            orElse: () => ButtonType.secondary,
                          ),
                          text: context.localization.addTransaction,
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
      child: CustomButton(
        type: _paymentType == value ? ButtonType.primary : ButtonType.secondary,
        onPressed: () {
          setState(() {
            _paymentType = value;
          });
        },
        text: title,
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
            color: context.colors.onBackground,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13.0),
          child: Center(
            child: Text(
              dateTime,
              style: context.styles.bodySmall!.copyWith(
                color: context.colors.primary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
