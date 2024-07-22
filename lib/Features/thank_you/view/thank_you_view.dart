import 'package:checkout_payment_app/Features/thank_you/utils/cusotm_check_box.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

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
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: ShapeDecoration(
                  color: const Color(0xffD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
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
            )
          ],
        ),
      ),
    );
  }
}
