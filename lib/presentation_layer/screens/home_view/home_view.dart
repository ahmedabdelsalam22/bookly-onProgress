import 'package:bookly/presentation_layer/screens/home_view/top_rated/top_rated_list_view.dart';
import 'package:flutter/material.dart';

import '../../../core/router/router.dart';
import '../../../core/utilities/color_constants.dart';
import '../../../core/utilities/text_styles.dart';
import '../../widgets/books_list_view.dart';
import '../../widgets/home_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.kPrimaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeAppBar(),
            BooksListView(
              height: MediaQuery.of(context).size.height * .3,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'TopRated',
                    style: AppTextStyles.textStyle18,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.kSeeAllViewRoute);
                    },
                    child: Text(
                      'See All',
                      style: AppTextStyles.textStyle18
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const TopRatedListView(),
          ],
        ));
  }
}
