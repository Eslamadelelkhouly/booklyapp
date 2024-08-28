import 'package:booklyapp/core/utils/app_router.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/features/home/presentation/views/widget/book_rating.dart';
import 'package:booklyapp/features/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.books});

  final BookModel books;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kDetailsView,
          extra: books,
        );
      },
      child: SizedBox(
        height: 170,
        child: Row(
          children: [
            CustomListViewItem(imageUrl: books.volumeInfo.imageLinks.thumbnail),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      books.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    books.volumeInfo.authors != null &&
                            books.volumeInfo.authors!.isNotEmpty
                        ? books.volumeInfo.authors![0]
                        : 'Unknown Author',
                    style: Styles.textStyle14,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      BookRating(
                        rating: books.volumeInfo.maturityRating ?? '0',
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
