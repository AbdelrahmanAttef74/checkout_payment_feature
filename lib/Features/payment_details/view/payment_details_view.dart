import 'package:checkout_payment_app/Features/checkout/utils/custom_buttom.dart';
import 'package:checkout_payment_app/Features/checkout/utils/custom_credit_card.dart';
import 'package:checkout_payment_app/Features/payment_details/utils/payment_methode_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentDetailsView extends StatefulWidget {
  const PaymentDetailsView({super.key});

  @override
  State<PaymentDetailsView> createState() => _PaymentDetailsViewState();
}

class _PaymentDetailsViewState extends State<PaymentDetailsView> {
  GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
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
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 62,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: paymentMethodsItemList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GestureDetector(
                      onTap: () {
                        activeIndex = index;
                        setState(() {});
                      },
                      child: PaymentMethodeItem(
                        isActive: activeIndex == index,
                        image: paymentMethodsItemList[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
          SliverToBoxAdapter(
            child: CustomCreditCard(
                formKey: formKey, autovalidateMode: autovalidateMode),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12, left: 16, right: 16),
                child: GestureDetector(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                    }
                  },
                  child: const CustomButton(text: 'Pay'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
