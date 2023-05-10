import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
class BookListItem extends StatelessWidget {
  const BookListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var w=MediaQuery.of(context).size.width;
    return AspectRatio(
      aspectRatio: 2.5/3,
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image:const DecorationImage(
            image: AssetImage( AssetsData.testImage),
          ),
        ),
      ),
    );
  }
}