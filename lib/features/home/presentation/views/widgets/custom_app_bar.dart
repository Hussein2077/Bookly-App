import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24,right: 24,top: 40,bottom: 20
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(AssetsData.logo,scale: 3,),
          const Spacer(),
          IconButton(onPressed: (){},
              icon: const Icon(Icons.search_outlined,size: 24,))
        ],
      ),
    );
  }
}
