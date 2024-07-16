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
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
