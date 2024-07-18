import 'package:checkout_payment_app/Features/checkout/utils/custom_order_item.dart';
import 'package:checkout_payment_app/Features/payment_details/view/payment_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(child: SvgPicture.asset('assets/images/arrow.svg')),
        centerTitle: true,
        title: const Text(
          'My Cart ',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 16),
            Expanded(child: Image.asset('assets/images/card_image.png')),
            const SizedBox(height: 20),
            const CustomOrderItem(text1: 'Order Subtotal', text2: r'$42.97'),
            const SizedBox(height: 3),
            const CustomOrderItem(text1: 'OrderSubtotal', text2: r'$0'),
            const SizedBox(height: 3),
            const CustomOrderItem(text1: 'Shipping', text2: r'$8'),
            const SizedBox(height: 3),
            const Divider(thickness: 2, indent: 16, endIndent: 16),
            const SizedBox(height: 17),
            const CustomOrderItem(
              text1: 'Total',
              text2: r'$50.97',
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PaymentDetailsView()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff34A853),
                  borderRadius: BorderRadius.circular(16),
                ),
                width: MediaQuery.of(context).size.width,
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 23, horizontal: 75),
                  child: Center(
                    child: Text(
                      'Complete Payment',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
