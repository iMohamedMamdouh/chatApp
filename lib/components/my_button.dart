import 'package:chat_app/themes/light_mode.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: const EdgeInsets.all(25.0),
        margin: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 15, color: Theme.of(context).colorScheme.tertiary),
          ),
        ),
      ),
    );
  }
}
