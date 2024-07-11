import 'package:chat_app/components/my_edit_icon.dart';
import 'package:flutter/material.dart';

class Storys extends StatelessWidget {
  const Storys({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      child: const Row(
        children: [
          MYEditIcon(
            color: Colors.grey,
            width: 60,
            height: 60,
            image: 'lib/images/profile.png',
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ahmed Mohamed',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '4h ago',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
