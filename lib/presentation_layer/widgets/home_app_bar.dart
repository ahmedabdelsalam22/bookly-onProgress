import 'package:bookly/core/utilities/assets_paths.dart';
import 'package:bookly/core/utilities/color_constants.dart';
import 'package:flutter/material.dart';

import '../../core/router/router.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20, left: 20, right: 20),
      child: Row(
        children: [
          Image.asset(
            AssetPath.logoImagePath,
            height: 18,
          ),
          const Spacer(),
          Material(
            color: ColorConstants.kPrimaryColor,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.kSearchViewRoute);
                  },
                  child: const Icon(
                    Icons.search,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.kGenresViewRoute);
                  },
                  child: const Icon(
                    Icons.category_outlined,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
