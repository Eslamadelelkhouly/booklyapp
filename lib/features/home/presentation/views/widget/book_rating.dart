import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
  });

  final String rating;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          const Icon(
            size: 14,
            FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4F),
          ),
          const SizedBox(width: 6.3),
          Text(
            '0',
            style: Styles.textStyle16,
          ),
          const SizedBox(width: 6),
          Opacity(
            opacity: 0.5,
            child: Text(
              '(254)',
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
