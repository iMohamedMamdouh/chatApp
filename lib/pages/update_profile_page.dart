import 'package:chat_app/themes/light_mode.dart';
import 'package:flutter/material.dart';

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        title: const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            "Update Profile",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
