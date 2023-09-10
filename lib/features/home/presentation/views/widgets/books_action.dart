import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

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
            backgroundColor: const Color(0xffEF8262),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            text: Text('Free Perview',
                style: Styles.textStyle16.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                )),
          )),
        ],
      ),
    );
  }
}
