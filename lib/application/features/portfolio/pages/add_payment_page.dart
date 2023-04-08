import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/extension/nullable_string_extension.dart';
import 'package:crypto_portfolio/application/features/portfolio/bloc/add_payment_bloc/add_payment_bloc.dart';
import 'package:crypto_portfolio/application/features/portfolio/widgets/select_coin_widget.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
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
      )..add(AddPaymentEvent.getCoin(widget.coinID)),
      child: Builder(builder: (context) {
        return BlocListener<AddPaymentBloc, AddPaymentState>(
          listener: (context, state) {
            state.maybeMap(
              error: (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(e.error),
                    duration: Duration(milliseconds: 800),
                  ),
                );
              },
              orElse: () => null,
            );
          },
          child: Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    SelectCoinWidget(),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          '${context.localization.paymentType}: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        _paymentTypeButton(PaymentType.deposit, context.localization.deposit),
                        _paymentTypeButton(PaymentType.withdraw, context.localization.withdraw),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          '${context.localization.amountOfMoney}: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.numberWithOptions(),
                            controller: moneyController,
                            validator: (value) => _validator(value, context),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          '${context.localization.numberOfCoins}: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.numberWithOptions(),
                            controller: coinsController,
                            validator: (value) => _validator(value, context),
                          ),
                        ),
                      ],
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
                                success: (_) => Colors.blue,
                                orElse: () => Colors.grey,
                              ),
                            ),
                          ),
                          child: Text(context.localization.addPayment),
                        );
                      },
                    ),
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
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        setState(() {
          _paymentType = value;
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Radio<String>(
            value: value,
            groupValue: _paymentType,
            onChanged: (String? value) {
              setState(() {
                _paymentType = value ?? PaymentType.deposit;
              });
            },
          ),
          Text(
            title,
            style: TextStyle(color: value == _paymentType ? Colors.black : Colors.grey),
          ),
          SizedBox(width: 10),
        ],
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
