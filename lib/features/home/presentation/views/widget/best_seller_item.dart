import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: Row(
        children: [
          AspectRatio(
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
          ),
          Column(
            children: [],
          )
        ],
      ),
    );
  }
}
