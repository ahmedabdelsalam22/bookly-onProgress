import 'package:bookly/presentation_layer/screens/search_view/search_view_body.dart';
import 'package:flutter/material.dart';

import '../../../core/utilities/color_constants.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.kPrimaryColor,
        body: const SearchViewBody(),
      ),
    );
  }
}
