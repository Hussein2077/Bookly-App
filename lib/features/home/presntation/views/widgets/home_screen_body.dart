import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: const [
        CustomAppBar(),
      ],
    );
  }
}
