import 'package:chat_app/components/my_status.dart';
import 'package:chat_app/components/storys.dart';
import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff240102),
        title: const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            "Updates",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  hintText: 'Search',
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.secondary,
                  focusedBorder: const UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Status',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: MyStatus(
              verticalPadding: 6.0,
              img: 'lib/images/profile.png',
              position: true,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'RECENT UPDATES',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          const Storys(),
          const Storys(),
          const Storys(),
          const Storys(),
          const Storys(),
        ],
      ),
    );
  }
}
