import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_item.dart';
import 'best_seller_list_view.dart';
import 'book_list_view.dart';
import 'custom_app_bar.dart';
import 'book_list_item.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomAppBar(),
              BookListView(),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle30,
                ),
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: const [
    //     CustomAppBar(),
    //     BookListView(),
    //     SizedBox(height: 30),
    //     Padding(
    //       padding: EdgeInsets.symmetric(horizontal: 16),
    //       child: Text('Best Seller',style: Styles.textStyle30,),
    //     ),
    //     BestSellerListView(),
    //
    //   ],
    // );
  }
}
