import 'package:crypto_portfolio/domain/entity/feature/portfolio_coins/payment.dart';
import 'package:crypto_portfolio/domain/entity/core/screen_status.dart';
import 'package:crypto_portfolio/main.dart';
import 'package:crypto_portfolio/presentation/design_system/core/border_radius.dart';
import 'package:crypto_portfolio/presentation/feature/delete_payment_view/delete_payment_bloc/delete_payment_bloc.dart';
import 'package:crypto_portfolio/presentation/feature/portfolio_screen/portfolio_bloc/portfolio_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeletePaymentView extends StatelessWidget {
  final Payment payment;
  final PortfolioBloc portfolioBloc;

  DeletePaymentView({required this.payment, required this.portfolioBloc});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: portfolioBloc,
      child: BlocProvider(
        create: (_) => getIt.get<DeletePaymentBloc>(),
        child: DeletePaymentDialog(payment: payment),
      ),
    );
  }
}

class DeletePaymentDialog extends StatefulWidget {
  final Payment payment;

  DeletePaymentDialog({required this.payment});

  @override
  State<DeletePaymentDialog> createState() => _DeletePaymentDialogState();
}

class _DeletePaymentDialogState extends State<DeletePaymentDialog> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        borderRadius: borderRadius15,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: borderRadius15,
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
                BlocConsumer<DeletePaymentBloc, DeletePaymentBlocState>(
                  builder: (_, DeletePaymentBlocState state) {
                    if (state.status == ScreenStatus.loading) return CircularProgressIndicator();
                    return SizedBox();
                  },
                  listener: (_, DeletePaymentBlocState state) async {
                    if (state.status == ScreenStatus.success) {
                      Navigator.of(context).pop();
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Payment deleted'),
                      ));
                      context.read<PortfolioBloc>().add(UpdatePortfolioCoinsListEvent());
                    }
                    if (state.status == ScreenStatus.failure) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Payment not deleted'),
                      ));
                    }
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<DeletePaymentBloc>().add(
                          DeletePaymentEvent(
                            payment: widget.payment,
                          ),
                        );
                  },
                  child: Text('Delete payment'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
