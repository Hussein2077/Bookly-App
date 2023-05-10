import 'package:flutter/material.dart';

import 'book_list_item.dart';

class BookListView extends StatelessWidget {
  const BookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),      child: SizedBox(
        height:h*.3 ,

        child: ListView.builder(
          shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder:  (context,i){
              return const BookListItem();
            }),
      ),
    );
  }
}
