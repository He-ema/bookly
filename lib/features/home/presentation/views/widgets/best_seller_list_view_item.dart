import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookDetailsView');
      },
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ??
                    'http://books.google.com/books/content?id=OJwXEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
            SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      bookModel.volumeInfo!.title!,
                      style: GoogleFonts.arvo(
                        textStyle: Styles.textStyle20,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    bookModel.volumeInfo!.authors![0],
                    style: Styles.textStyle14,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      BookRating(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
