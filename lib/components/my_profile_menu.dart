import 'package:chat_app/themes/light_mode.dart';
import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    required this.title,
    required this.icon,
    required this.onpress,
    this.endicon = true,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onpress;
  final bool endicon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 6.0),
      child: ListTile(
        onTap: onpress,
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: kPrimaryColor.withOpacity(0.1),
          ),
          child: Icon(icon, color: kPrimaryColor),
        ),
        title: Text(title, style: TextStyle(color: textColor)),
        trailing: endicon
            ? Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: kPrimaryColor.withOpacity(0.1),
                ),
                child:
                    const Icon(Icons.arrow_forward_ios, color: kPrimaryColor),
              )
            : null,
      ),
    );
  }
}
