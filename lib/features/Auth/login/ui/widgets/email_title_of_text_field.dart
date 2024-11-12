import 'package:flutter/material.dart';
import 'package:soulsync/core/theming/styles.dart';

class TitleOfTextField extends StatelessWidget {
  const TitleOfTextField({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Styles.textStyle14RegularLightGrey,
        ),
        const SizedBox(
          width: 3,
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: Icon(
            Icons.star,
            size: 9,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
