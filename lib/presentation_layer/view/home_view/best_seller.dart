import 'package:flutter/material.dart';

import '../../../core/utilities/assets_paths.dart';
import '../../../core/utilities/text_styles.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AssetPath.bookImage,
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Text(
                'Harry Potter and The GolBet of Fire',
                style: AppTextStyles.textStyle20.copyWith(fontFamily: 'sectra'),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
