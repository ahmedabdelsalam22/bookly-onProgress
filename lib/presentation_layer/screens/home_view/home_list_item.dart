import 'package:flutter/material.dart';

import '../../../core/utilities/assets_paths.dart';
import '../../../core/utilities/text_styles.dart';
import '../../widgets/widget_rating.dart';

class HomeViewListItem extends StatelessWidget {
  const HomeViewListItem({
    Key? key,
    required this.title,
    required this.description,
    required this.genreName,
    required this.price,
    required this.reviewNumbers,
    required this.rate,
  }) : super(key: key);

  final String title, description, genreName;
  final int price, reviewNumbers;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
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
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  title,
                  style:
                      AppTextStyles.textStyle20.copyWith(fontFamily: 'sectra'),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                genreName,
                style:
                    AppTextStyles.textStyle14.copyWith(color: Colors.grey[150]),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "$price\$",
                    style: AppTextStyles.textStyle20.copyWith(
                        fontFamily: 'pro', fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  BookRating(
                    rate: rate,
                    reviewersNumbers: reviewNumbers,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
