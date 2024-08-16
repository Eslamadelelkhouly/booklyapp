import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          const Icon(
            FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4F),
          ),
          const SizedBox(width: 6.3),
          const Text(
            '4.8',
            style: Styles.textStyle16,
          ),
          const SizedBox(width: 6),
          Text(
            '(254)',
            style: Styles.textStyle14.copyWith(
              color: Color(0xff827F8A),
            ),
          )
        ],
      ),
    );
  }
}
