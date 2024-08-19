import 'package:booklyapp/features/home/presentation/views/widget/book_details_section.dart';
import 'package:booklyapp/features/home/presentation/views/widget/custom_app_bar_book_details.dart';
import 'package:booklyapp/features/home/presentation/views/widget/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDeatialViewBody extends StatelessWidget {
  const BookDeatialViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomAppBarBookDetails(),
                const BookDetailsSection(),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
