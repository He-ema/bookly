import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.22),
          child: CustomBookImage(
              imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ??
                  'http://books.google.com/books/content?id=cjgPAQAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api'),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          bookModel.volumeInfo!.title!,
          style: GoogleFonts.arvo(textStyle: Styles.textStyle30),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          bookModel.volumeInfo?.authors?[0] ?? '',
          style: Styles.textStyle18.copyWith(
            color: Colors.white.withOpacity(0.7),
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          height: 37,
        ),
        BooksAction(bookModel: bookModel),
      ],
    );
  }
}
