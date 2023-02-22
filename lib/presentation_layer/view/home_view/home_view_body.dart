import 'package:flutter/material.dart';

import '../../../core/utilities/text_styles.dart';
import '../../widgets/books_list_view.dart';
import '../../widgets/custom_appbar.dart';
import 'best_seller/best_seller.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          BooksListView(
            height: MediaQuery.of(context).size.height * .3,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 55),
            child: Text(
              'Best Seller',
              style: AppTextStyles.textStyle18,
            ),
          ),
          const BestSellerListView(),
        ],
      ),
    );
  }
}
