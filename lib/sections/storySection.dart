import 'package:fb_ui_clone/assets.dart';
import 'package:fb_ui_clone/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to Story",
            avatar: farhan,
            story: farhan,
            createStoryStatus: true,
          ),
          StoryCard(
            avatar: kilivayil,
            story: crossroads,
            createStoryStatus: false,
            displayBorder: true,
            imagefit: BoxFit.contain,
          ),
          StoryCard(
            avatar: gdone,
            story: gdoneStory,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            avatar: sarath,
            story: sarathNeonStory,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            avatar: aflu,
            story: afluStory,
            createStoryStatus: false,
            displayBorder: true,
            imagefit: BoxFit.fill,
          ),
          
        ],
      ),
    );
  }
}