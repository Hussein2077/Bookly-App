import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_item.dart';
import 'package:flutter/material.dart';
class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;

    return SizedBox(
      height: h*.4,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),

        child: ListView.builder(

          padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder:  (context,i){
              return const BestSellerListItem();
            }),
      ),
    );
  }
}
