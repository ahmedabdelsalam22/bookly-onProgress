import 'package:flutter/material.dart';

import '../../../core/utilities/color_constants.dart';
import '../../../core/utilities/text_styles.dart';
import '../home_view/top_rated/list_view_book_item.dart';
import 'custom_search_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                height: 50,
              ),
              CustomSearchTextField(),
              SizedBox(
                height: 16,
              ),
              Text(
                'Search Result',
                style: AppTextStyles.textStyle18,
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: SearchResultListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListViewBookItem(),
        );
      },
    );
  }
}
