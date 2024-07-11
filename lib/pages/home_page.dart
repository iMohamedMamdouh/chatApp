import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:chat_app/components/button_controller.dart';
import 'package:chat_app/pages/chat_page.dart';
import 'package:chat_app/pages/profile_page.dart';
import 'package:chat_app/pages/setting_page.dart';
import 'package:chat_app/pages/status_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

var iconList = [
  Icons.home,
  Icons.chat_rounded,
  Icons.settings,
  Icons.person,
];

class HomePage extends StatelessWidget {
  final controller = Get.put(BottomBarController());
  final _controller = PageController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Stack(
          children: [
            PageView(controller: _controller, children: [
              controller.getIndex() == 0
                  ? const StatusPage()
                  : controller.getIndex() == 1
                      ? const ChatPage()
                      : controller.getIndex() == 2
                          ? const SettingPage()
                          : controller.getIndex() == 3
                              ? const ProfilePage()
                              : const StatusPage(),
            ])
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange.shade600,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(Icons.support_agent),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          backgroundColor: const Color(0xFF240102),
          inactiveColor: Colors.white,
          activeColor: Colors.orange.shade600,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          icons: iconList,
          activeIndex: controller.getIndex(),
          onTap: (index) => controller.setIndex(index),
        ),
      ),
    );
  }
}
