import 'package:fb_ui_clone/sections/statusSection.dart';
import 'package:fb_ui_clone/widgets/circularButton.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Widget thickDivider = Divider(thickness: 1,
  color: Colors.grey,);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("navigate to search");
              },
            ),
            CircularButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print("navigate to messenger");
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thickDivider,
          ],
        ),
      ),
    );
  }
}
