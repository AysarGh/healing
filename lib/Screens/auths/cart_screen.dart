import 'package:flutter/material.dart';

import '../../utils/auths/cart_items.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
              top: 5.0,
              left: 10.0
          ),
          child: AddToCart(),
        ),
      ),
    );
  }
}
