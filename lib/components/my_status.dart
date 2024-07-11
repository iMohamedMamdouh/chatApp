import 'package:chat_app/components/my_edit_icon.dart';
import 'package:chat_app/themes/light_mode.dart';
import 'package:flutter/material.dart';

class MyStatus extends StatelessWidget {
  const MyStatus(
      {super.key, this.verticalPadding, this.img, this.position = false});

  final double? verticalPadding;
  final String? img;
  final bool position;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Set the background color to grey
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 10.0, vertical: verticalPadding ?? 0.0),
            child: Stack(
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                    child: Image(
                      image: AssetImage(img ?? 'lib/images/no_image.png'),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: position
                      ? Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: kPrimaryColor,
                          ),
                          child: const Icon(Icons.add,
                              size: 20, color: Colors.white),
                        )
                      : Container(),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Status',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Add to my status',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const MYEditIcon(
            width: 40,
            height: 40,
            color: kPrimaryColor,
            iconEdit: Icons.camera_alt,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: MYEditIcon(
              width: 40,
              height: 40,
              color: kPrimaryColor,
              iconEdit: Icons.edit,
            ),
          )
        ],
      ),
    );
  }
}
