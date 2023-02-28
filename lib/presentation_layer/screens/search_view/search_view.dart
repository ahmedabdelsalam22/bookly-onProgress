import 'package:bookly/data/model/searchModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utilities/color_constants.dart';
import '../../../core/utilities/text_styles.dart';
import '../../business_logic/cubit/book_cubit.dart';
import '../../business_logic/state/MovieState.dart';
import '../home_view/top_rated/list_view_book_item.dart';
import 'custom_search_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.kPrimaryColor,
        appBar: AppBar(
          backgroundColor: ColorConstants.kPrimaryColor,
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: BlocConsumer<BookCubit, BookState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                var cubit = BookCubit.get(context);
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    CustomSearchTextField(
                      cubit: cubit,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Search Result',
                      style: AppTextStyles.textStyle18,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    if (state is GetSearchSuccessState)
                      Expanded(
                        child: SearchResultListView(
                          searchModel: cubit.searchModel,
                        ),
                      ),
                  ],
                );
              },
            )),
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key, required this.searchModel});

  final List<SearchModel>? searchModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: searchModel!.length,
      itemBuilder: (context, index) {
        var model = searchModel![index];

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListViewBookItem(
            title: '${model.title}',
            description: '${model.description}',
            genreName: '${model.genreName}',
            price: model.price!.toInt(),
            reviewNumbers: model.reviewersNumbers!.toInt(),
            rate: model.rate!.toDouble(),
          ),
        );
      },
    );
  }
}
