import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/custom_loading_widget.dart';
import '../../manager/featured_box_cubit/featured_books_cubit.dart';
import 'custom_book_image.dart';

class FeaturedBoxListView extends StatelessWidget {
  const FeaturedBoxListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context)
                        .push('/bookDetailsView', extra: state.books[index]);
                  },
                  child: CustomBookImage(
                      imageUrl: state
                              .books[index].volumeInfo?.imageLinks?.thumbnail ??
                          'http://books.google.com/books/content?id=OJwXEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
                ),
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingWidget();
        }
      },
    );
  }
}
