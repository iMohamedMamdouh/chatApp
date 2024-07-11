import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff240102),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            "Settings",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.logout),
          )
        ],
      ),
    );
  }
}
