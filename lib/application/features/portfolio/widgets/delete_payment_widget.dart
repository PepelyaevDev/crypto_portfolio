import 'package:crypto_portfolio/application/features/portfolio/bloc/delete_payment_bloc/delete_payment_bloc.dart';
import 'package:crypto_portfolio/application/features/portfolio/bloc/portfolio_bloc/portfolio_bloc.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/repo/coins_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeletePaymentWidget extends StatelessWidget {
  final PaymentEntity payment;
  final PortfolioBloc portfolioBloc;

  DeletePaymentWidget({required this.payment, required this.portfolioBloc});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: portfolioBloc,
      child: BlocProvider(
        create: (_) => DeletePaymentBloc(context.read<CoinsRepo>()),
        child: Builder(builder: (context) {
          return Center(
            child: Material(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.close),
                      ),
                      BlocConsumer<DeletePaymentBloc, DeletePaymentState>(
                        builder: (_, DeletePaymentState state) {
                          return state.maybeWhen(
                            loading: () => CircularProgressIndicator(),
                            orElse: () => SizedBox(),
                          );
                        },
                        listener: (_, DeletePaymentState state) async {
                          state.maybeWhen(
                            success: () {
                              Navigator.of(context).pop();
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('Payment deleted'),
                              ));
                              context.read<PortfolioBloc>().add(PortfolioEvent.update());
                            },
                            failure: () {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('Payment not deleted'),
                              ));
                            },
                            orElse: () => null,
                          );
                        },
                      ),
                      ElevatedButton(
                        onPressed: () {
                          context
                              .read<DeletePaymentBloc>()
                              .add(DeletePaymentEvent.delete(payment: payment));
                        },
                        child: Text('Delete payment'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
