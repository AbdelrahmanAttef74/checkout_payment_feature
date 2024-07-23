import 'package:checkout_payment_app/Features/checkout/utils/custom_order_item.dart';
import 'package:checkout_payment_app/Features/thank_you/utils/credit_card_item_info.dart';
import 'package:checkout_payment_app/Features/thank_you/utils/cusotm_check_box.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 32,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Center(
            child: SvgPicture.asset('assets/images/arrow.svg'),
          ),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: ShapeDecoration(
                color: const Color(0xffD9D9D9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  const Text(
                    'Thank You !',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Your transaction was successful',
                    style: TextStyle(fontSize: 20),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: CustomOrderItem(
                      text1: 'Date',
                      text2: '01/24/2023',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: CustomOrderItem(
                      text1: 'Time',
                      text2: '10:15 AM',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: CustomOrderItem(
                      text1: 'To',
                      text2: 'Sam Louis',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Divider(thickness: 2),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: CustomOrderItem(
                      text1: 'Total',
                      text2: '\$50.97',
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  const CreditCardItemInfo(),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          FontAwesomeIcons.barcode,
                          size: 64,
                        ),
                        Container(
                          height: 58,
                          width: 113,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Color(0xff34A853), width: 1.5),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'PAID',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff34A853)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                      height:
                          ((MediaQuery.of(context).size.height * .2 + 20) / 2) -
                              29)
                ],
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * .2,
              left: -20,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * .2,
              right: -20,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            const Positioned(
              top: -50,
              right: 0,
              left: 0,
              child: CustomCheckBox(),
            ),
            Positioned(
              right: 28,
              left: 28,
              bottom: MediaQuery.of(context).size.height * .2 + 20,
              child: const DottedLine(
                dashColor: Color(0xffB8B8B8),
                lineThickness: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
