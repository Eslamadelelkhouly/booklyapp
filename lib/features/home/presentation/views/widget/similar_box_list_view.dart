import 'package:booklyapp/features/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class SimilarBoxListView extends StatelessWidget {
  const SimilarBoxListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.27,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomListViewItem(),
          );
        },
      ),
    );
    ;
  }
}
