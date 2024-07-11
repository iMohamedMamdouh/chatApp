import 'package:chat_app/themes/light_mode.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      title: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      automaticallyImplyLeading: false,
    );
  }
}
