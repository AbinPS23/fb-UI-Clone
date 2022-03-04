import 'package:fb_ui_clone/assets.dart';
import 'package:fb_ui_clone/widgets/avatar.dart';
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
          createRoomButton(),
          Avatar(displayImage: farhan, displayStatus: true,),
          Avatar(displayImage: kilivayil, displayStatus: true,),
          Avatar(displayImage: sonu),
          Avatar(displayImage: tinu),
          Avatar(displayImage: gdone),
          Avatar(displayImage: sarath),
          Avatar(displayImage: aflu)
        ],
      ),
    );
  }
  Widget createRoomButton(){
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
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
