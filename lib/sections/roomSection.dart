import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton()
        ],
      ),
    );
  }
  Widget createRoomButton(){
    return Container(
            child: OutlineButton.icon(
              shape: StadiumBorder(),
                onPressed: () {
                  print("Create Chat Room");
                },
                icon: Icon(
                  Icons.video_call,
                  color: Colors.purple,
                ),
                label: Text(
                  "Create \nRoom",
                  style: TextStyle(color: Colors.blue),
                ),
                borderSide: BorderSide(color: Colors.blue.shade100,width: 1),
                ),
          );
  }
}
