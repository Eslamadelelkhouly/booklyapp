import 'package:booklyapp/core/utils/style.dart';
import 'package:booklyapp/features/home/presentation/views/widget/best_seller_item.dart';
import 'package:booklyapp/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:booklyapp/features/home/presentation/views/widget/feature_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const FeatureBooksListView(),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          BestSellerItem(),
        ],
      ),
    );
  }
}
