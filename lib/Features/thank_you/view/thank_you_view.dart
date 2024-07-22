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
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xffD9D9D9),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Color(0xff34A853),
                  child: Icon(Icons.check, size: 55, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
