import 'package:bookly/core/router/router.dart';
import 'package:flutter/material.dart';

import '../../../core/utilities/color_constants.dart';

class GenresView extends StatelessWidget {
  const GenresView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kPrimaryColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.kPrimaryColor,
        centerTitle: true,
        title: const Text("Genres"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return genresListTile(context);
        },
        itemCount: 5,
      ),
    );
  }

  Widget genresListTile(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: ListTile(
        title: const Text("Genre Name"),
        trailing: InkWell(
          onTap: () {
            Navigator.pushNamed(context, Routes.kBooksByGenreViewRoute);
          },
          child: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
