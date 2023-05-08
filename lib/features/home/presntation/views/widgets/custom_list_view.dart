import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
class CustomListView extends StatelessWidget {
  const CustomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    //var w=MediaQuery.of(context).size.width;
    return SizedBox(
      height:h*.23 ,
      child: AspectRatio(
        aspectRatio: 2.5/3,
        child: Container(
          decoration:  BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(16),
            image:const DecorationImage(
              image: AssetImage( AssetsData.testImage),
            ),
          ),
        ),
      ),
    );
  }
}
