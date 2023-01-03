import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/router/router.dart';
import '../../../../core/utilities/assets_paths.dart';
import '../../../../core/utilities/text_styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.bookDetailsViewRoute);
      },
      child: SizedBox(
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
            const SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    'Harry Potter \n and The Goblet of Fire',
                    style: AppTextStyles.textStyle20
                        .copyWith(fontFamily: 'sectra'),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  'J.K Rowing',
                  style: AppTextStyles.textStyle14
                      .copyWith(color: Colors.grey[150]),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "19.09\$",
                      style: AppTextStyles.textStyle20.copyWith(
                          fontFamily: 'pro', fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Row(
                      children: const [
                        Icon(
                          FontAwesomeIcons.solidStar,
                          color: Colors.amberAccent,
                        ),
                        SizedBox(width: 3),
                        Text(
                          '4.9  ${'(2150)'}',
                          style: AppTextStyles.textStyle16,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
