import 'package:chat_app/auth/login_or_register.dart';
import 'package:chat_app/components/my_appbar.dart';
import 'package:chat_app/components/my_edit_icon.dart';
import 'package:chat_app/components/my_profile_menu.dart';
import 'package:chat_app/pages/update_profile_page.dart';
import 'package:chat_app/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyAppBar(
          title: 'Profile',
        ),
        const Padding(
          padding: EdgeInsets.only(top: 50),
          child: Stack(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  child: Image(
                    image: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
                  ),
                ),
              ),
              MYEditIcon(
                width: 40,
                height: 40,
                color: kPrimaryColor,
                iconEdit: Icons.edit,
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Mohamed Mamdoh',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const Text('imohamedmamdoh1@gmail.com'),
        const SizedBox(height: 20),
        SizedBox(
          width: 200,
          child: ElevatedButton(
            onPressed: () => Get.to(
              () => const UpdateProfilePage(),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
              side: BorderSide.none,
            ),
            child: const Text(
              'Edit Profile',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Divider(color: Colors.grey, thickness: 2),
        const SizedBox(height: 20),
        ProfileMenu(
          title: 'Settings',
          icon: Icons.settings,
          onpress: () {
            Get.toNamed('/setting');
          },
        ),
        ProfileMenu(
          title: 'Starred message',
          icon: Icons.star,
          onpress: () {},
        ),
        ProfileMenu(title: 'Help Center', icon: Icons.help, onpress: () {}),
        ProfileMenu(
          title: 'Log Out',
          icon: Icons.logout,
          onpress: () => Get.to(() => const LoginOrRegister()),
          textColor: Colors.red[800],
          endicon: false,
        ),
      ],
    );
  }
}
