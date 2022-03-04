import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {

final String displayImage;
final bool displayStatus;
  Avatar({required this.displayImage, this.displayStatus = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 4,right: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage,
              height: 50,
              width: 50,
            ),
          ),
        ),
        displayStatus ?
        Positioned(
          bottom: 0,
          right: 1,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white,width: 2)
            ),
          ),
        ) : SizedBox(),
        ],
    );
  }
}