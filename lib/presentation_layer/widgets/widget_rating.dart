import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/utilities/text_styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amberAccent,
        ),
        SizedBox(width: 12),
        Text(
          '4.9',
          style: AppTextStyles.textStyle16,
        ),
        SizedBox(width: 5),
        Opacity(
          opacity: 0.5,
          child: Text(
            '(2960)',
            style: AppTextStyles.textStyle16,
          ),
        ),
      ],
    );
  }
}
