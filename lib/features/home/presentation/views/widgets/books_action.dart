import 'package:bookly/core/utils/functions/launch_url.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            backgroundColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            text: Text('19.99',
                style: Styles.textStyle18.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                )),
          )),
          Expanded(
              child: CustomButton(
            onPressed: () async {
              await launchCustomUrl(context, bookModel.volumeInfo!.previewLink);
            },
            backgroundColor: const Color(0xffEF8262),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            text: Text(getText(bookModel),
                style: Styles.textStyle16.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                )),
          )),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo!.previewLink == null) {
      return 'not avaialable';
    } else {
      return 'Free Perview';
    }
  }
}
