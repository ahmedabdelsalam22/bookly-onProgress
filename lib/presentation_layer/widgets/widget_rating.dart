import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/utilities/text_styles.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {Key? key, required this.rate, required this.reviewersNumbers})
      : super(key: key);

  final double rate;
  final int reviewersNumbers;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 16,
          color: Colors.amberAccent,
        ),
        const SizedBox(width: 8),
        Text(
          '$rate',
          style: AppTextStyles.textStyle16,
        ),
        const SizedBox(width: 5),
        Opacity(
          opacity: 0.5,
          child: Text(
            '($reviewersNumbers)',
            style: AppTextStyles.textStyle16,
          ),
        ),
      ],
    );
  }
}
