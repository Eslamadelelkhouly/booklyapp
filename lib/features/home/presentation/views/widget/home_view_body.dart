import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
      ],
    );
  }
}
