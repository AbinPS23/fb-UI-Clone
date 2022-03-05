import 'package:fb_ui_clone/assets.dart';
import 'package:fb_ui_clone/widgets/avatar.dart';
import 'package:fb_ui_clone/widgets/circularButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {

  final String labelText;
  final String avatar;
  final String story;
  final bool createStoryStatus;
  final bool displayBorder;
  final BoxFit imagefit;

  StoryCard({
    this.labelText = "",
    required this.avatar,
    required this.story,
    this.createStoryStatus = false,
    this.displayBorder = false,
    this.imagefit = BoxFit.cover
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          createStoryStatus ? Positioned(
            top: 5,
            left: 5,
            child: CircularButton(
              buttonIcon: Icons.add,
              buttonAction: () {
                print("Create new story.");
              },
              iconColor: Colors.blue,
            ),
          ): 
          Avatar(displayImage: avatar, displayBorder: displayBorder,),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labelText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
