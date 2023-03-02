import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../../core/utilities/assets_paths.dart';

class HomeSwiper extends StatelessWidget {
  const HomeSwiper({Key? key}) : super(key: key);

  static List<String>? offerImages = [
    AssetPath.book1,
    AssetPath.book2,
    AssetPath.book3,
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      height: size.height * 0.28,
      child: Swiper(
        autoplay: false,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            offerImages![index],
            fit: BoxFit.fill,
          );
        },
        itemCount: offerImages!.length,
        pagination: const SwiperPagination(
          alignment: Alignment.bottomCenter,
          builder: DotSwiperPaginationBuilder(
              color: Colors.white, activeColor: Colors.red),
        ),
        // control: SwiperControl(color: Colors.black),
      ),
    );
  }
}
