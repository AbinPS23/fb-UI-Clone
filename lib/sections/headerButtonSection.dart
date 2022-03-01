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
                print("navigate to live.");
              }),
          VerticalDivider(thickness: 1, color: Colors.grey[300]),
          headerButton(
              buttonText: "Photo",
              buttonIcon: Icons.photo,
              buttonIconColor: Colors.green,
              buttonAction: () {
                print("navigate to gallary.");
              }),
              VerticalDivider(thickness: 1,color: Colors.grey[300],),
              headerButton(
              buttonText: "Room",
              buttonIcon: Icons.video_call,
              buttonIconColor: Colors.indigo,
              buttonAction: () {
                print("go to messenger.");
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
