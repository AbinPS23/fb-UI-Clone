import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
              buttonText: "Live",
              buttonIcon: Icons.video_call,
              buttonIconColor: Colors.red,
              buttonAction: () {
                print("Go live.");
              }),
          VerticalDivider(thickness: 1, color: Colors.grey[300]),
          headerButton(
              buttonText: "Photo",
              buttonIcon: Icons.photo_library,
              buttonIconColor: Colors.green,
              buttonAction: () {
                print("Take Photo");
              }),
              VerticalDivider(thickness: 1,color: Colors.grey[300],),
              headerButton(
              buttonText: "Room",
              buttonIcon: Icons.video_call,
              buttonIconColor: Colors.purple,
              buttonAction: () {
                print("Create chat room");
              })
              
        ],
      ),
    );
  }

  Widget headerButton({
    required String buttonText,
    required IconData buttonIcon,
    required Color buttonIconColor,
    required void Function() buttonAction,
  }) {
    return FlatButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      label: Text(buttonText),
    );
  }
}
