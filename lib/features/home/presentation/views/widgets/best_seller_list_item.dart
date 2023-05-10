import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utils/assets.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1.8 / 2.8,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: AssetImage(AssetsData.testImage),
                ),
              ),
            ),
          ),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height:10 ,),
                Text(
                  'Harry Potter bmeoih,wgwjgrowsebrwwnwiogrnrwiognoignieogneiognierognieogneiognwoihg',
                  style: Styles.textStyle30.copyWith(fontSize: 22),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Hussein Yasser',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomRowBestSeller(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
class CustomRowBestSeller extends StatelessWidget {
  const CustomRowBestSeller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children:   [
        Text(
          '19.99 \$',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const      SizedBox(
          width: 20,
        ),
        const Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        const       SizedBox(
          width: 5,
        ),
        const      Text(
          '19.99',
          style: Styles.textStyle18,
        ),
        const     SizedBox(
          width: 5,
        ),
        const Expanded(
          child: SizedBox(
            child: Text(
              '(5231)',
              style: Styles.textStyle14,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}
