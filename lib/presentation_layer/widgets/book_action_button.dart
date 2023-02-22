import 'package:flutter/material.dart';

import 'custom_button.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: CustomButton(
            text: '19.99L.E',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          ),
        ),
      ],
    );
  }
}
