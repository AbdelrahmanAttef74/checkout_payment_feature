import 'package:checkout_payment_app/Features/payment_details/utils/payment_methode_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentDetailsView extends StatefulWidget {
  const PaymentDetailsView({super.key});

  @override
  State<PaymentDetailsView> createState() => _PaymentDetailsViewState();
}

class _PaymentDetailsViewState extends State<PaymentDetailsView> {
  int activeIndex = 0;
  List<String> paymentMethodsItemList = [
    'assets/images/iconCarrier.svg',
    'assets/images/paypal.svg',
    'assets/images/applePay.svg'
  ];
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
        body: Column(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              height: 62,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: paymentMethodsItemList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          activeIndex = index;
                        });
                      },
                      child: PaymentMethodeItem(
                        isActive: activeIndex == index,
                        image: paymentMethodsItemList[index],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ));
  }
}
