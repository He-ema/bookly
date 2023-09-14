import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //  physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      // ignore: prefer_const_constructors
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 20),
        //child: BookListViewItem(),
      ),
    );
  }
}
