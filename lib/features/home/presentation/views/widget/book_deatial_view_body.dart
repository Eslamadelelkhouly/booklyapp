import 'package:booklyapp/core/utils/style.dart';
import 'package:booklyapp/features/home/presentation/views/widget/custom_app_bar_book_details.dart';
import 'package:booklyapp/features/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDeatialViewBody extends StatelessWidget {
  const BookDeatialViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomAppBarBookDetails(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: const CustomListViewItem(),
          ),
          const SizedBox(
            height: 48,
          ),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
