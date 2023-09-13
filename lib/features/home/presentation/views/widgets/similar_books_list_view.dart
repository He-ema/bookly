import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: CustomBookImage(
              imageUrl:
                  'http://books.google.com/books/content?id=culPGJf4MGcC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
        ),
      ),
    );
  }
}
