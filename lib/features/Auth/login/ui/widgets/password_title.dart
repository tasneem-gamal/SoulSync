import 'package:flutter/material.dart';
import 'package:soulsync/core/theming/styles.dart';

class PasswordTitle extends StatelessWidget {
  const PasswordTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Password',
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