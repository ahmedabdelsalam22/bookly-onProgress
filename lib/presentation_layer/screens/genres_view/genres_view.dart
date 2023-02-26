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
          return genresListTile();
        },
        itemCount: 5,
      ),
    );
  }

  Widget genresListTile() {
    return GestureDetector(
      onTap: () {
        /// TODO: navigation to books
      },
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: ListTile(
          title: Text("Genre Name"),
          trailing: InkWell(
            onTap: null,
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
