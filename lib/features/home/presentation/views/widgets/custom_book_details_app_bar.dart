import 'package:flutter/material.dart';
class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.close,
            size: 30,
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.shopping_cart_outlined,
          size: 30,
        ),
      ],
    );
  }
}
