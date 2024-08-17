import 'package:booklyapp/features/home/presentation/views/widget/custom_app_bar_book_details.dart';
import 'package:flutter/material.dart';

class BookDeatialViewBody extends StatelessWidget {
  const BookDeatialViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomAppBarBookDetails(),
        ],
      ),
    );
  }
}
