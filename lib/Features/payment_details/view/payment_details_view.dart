import 'package:checkout_payment_app/Features/payment_details/utils/payment_methode_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Center(
              child: SvgPicture.asset('assets/images/arrow.svg'),
            ),
          ),
          centerTitle: true,
          title: const Text(
            'Payment Details',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        body: const Column(
          children: [
            SizedBox(height: 20),
            PaymentMethodeItem(isActive: true),
          ],
        ));
  }
}
