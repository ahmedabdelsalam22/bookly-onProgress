import 'package:flutter/material.dart';

import '../../../core/utilities/color_constants.dart';

class BooksByGenreView extends StatelessWidget {
  const BooksByGenreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kPrimaryColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.kPrimaryColor,
        centerTitle: true,
        title: const Text("Books"),
      ),
      /* body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: ListViewBookItem(),
          );
        },
        itemCount: 15,
      ),*/
    );
  }
}
