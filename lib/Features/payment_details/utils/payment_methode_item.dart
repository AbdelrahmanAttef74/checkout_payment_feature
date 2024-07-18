import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodeItem extends StatelessWidget {
  const PaymentMethodeItem({required this.isActive, super.key});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 800),
      height: 62,
      width: 103,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            width: 1.5,
            color: isActive ? const Color(0xff34A853) : Colors.grey,
          ),
        ),
        shadows: [
          BoxShadow(
              color: isActive ? const Color(0xff34A853) : Colors.white,
              blurRadius: 4,
              spreadRadius: 0,
              offset: const Offset(0, 0)),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: SvgPicture.asset('assets/images/iconCarrier.svg'),
        ),
      ),
    );
  }
}
