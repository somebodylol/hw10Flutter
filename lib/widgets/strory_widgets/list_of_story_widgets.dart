import 'package:flutter/material.dart';
import 'package:lesson10fl/main.dart';

class ListOfStoryWidgets extends StatelessWidget {
  ListOfStoryWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.128,
      padding: const EdgeInsets.only(left: 10, top: 9, bottom: 8),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffE5E5E5),
        ),
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CustomImageText(
            profileImage: 'assets/images/ProfileImage.png',
            nicknameText: 'Your Story',
          ),
          CustomImageText(
            isLive: true,
            profileImage: 'assets/images/story2.png',
            nicknameText: 'karennne',
          ),
          CustomImageText(
            profileImage: 'assets/images/story3.png',
            nicknameText: 'zackjohn',
          ),
          CustomImageText(
            profileImage: 'assets/images/story4.png',
            nicknameText: 'zackjohn',
          ),
          CustomImageText(
            profileImage: 'assets/images/story4.png',
            nicknameText: 'craig_love',
          ),
        ],
      ),
    );
  }
}
