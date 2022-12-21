import 'package:flutter/material.dart';

import '../../widgets/books_list_view.dart';
import '../../widgets/custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: const [
          CustomAppBar(),
          BooksListView(),
        ],
      ),
    );
  }
}
