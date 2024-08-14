import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                'https://m.media-amazon.com/images/M/MV5BNDg5OGQ0MDgtZGM0ZS00NzgzLTllOGQtNjQ0YzU2M2RkMjQyXkEyXkFqcGdeQXVyMTA0MjU0Ng@@._V1_FMjpg_UX980_.jpg'),
          ),
        ),
      ),
    );
  }
}
