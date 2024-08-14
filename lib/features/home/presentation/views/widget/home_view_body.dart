import 'package:booklyapp/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:booklyapp/features/home/presentation/views/widget/feature_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        const FeatureBooksListView(),
      ],
    );
  }
}
