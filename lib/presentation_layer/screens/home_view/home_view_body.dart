import 'package:flutter/material.dart';

import '../../../core/utilities/text_styles.dart';
import '../../widgets/books_list_view.dart';
import '../../widgets/home_app_bar.dart';
import 'best_seller/best_seller.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeAppBar(),
        BooksListView(
          height: MediaQuery.of(context).size.height * .3,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 55),
          child: Row(
            children: [
              const Text(
                'Best Seller',
                style: AppTextStyles.textStyle18,
              ),
              TextButton(onPressed: () {}, child: const Text('See All')),
            ],
          ),
        ),
        const BestSellerListView(),
      ],
    );
  }
}
