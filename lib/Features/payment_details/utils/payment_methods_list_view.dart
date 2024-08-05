import 'package:checkout_payment_app/Features/payment_details/utils/payment_methode_item.dart';
import 'package:flutter/material.dart';

class PaymentMethodsItemsListView extends StatefulWidget {
  const PaymentMethodsItemsListView({
    super.key,
    required this.paymentMethodsItemList,
  });

  final List<String> paymentMethodsItemList;

  @override
  State<PaymentMethodsItemsListView> createState() =>
      _PaymentMethodsItemsListViewState();
}

class _PaymentMethodsItemsListViewState
    extends State<PaymentMethodsItemsListView> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: widget.paymentMethodsItemList.length,
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
              image: widget.paymentMethodsItemList[index],
            ),
          ),
        );
      },
    );
  }
}
