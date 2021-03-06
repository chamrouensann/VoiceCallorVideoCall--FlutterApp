import 'package:flutter/material.dart';
import 'package:voicevideocallapplication/components/dial_user_pic.dart';
import 'package:voicevideocallapplication/screens/audioCallWithImage/constants.dart';
import 'package:voicevideocallapplication/screens/audioCallWithImage/size.config.dart';
import 'package:voicevideocallapplication/screens/groupCall/components/user_calling_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return Container(
//      width: SizeConfig.screenWidth / 2,
//      child: AspectRatio(
//        aspectRatio: 0.53,
//        child: UserCallingCard(
//          image: "assets/images/group_call_face_small.png",
//          name: "Calling...",
//        ),
//      ),
//    );
    return GridView.builder(
      padding: EdgeInsets.zero,
      itemCount: demonData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.53,
        crossAxisCount: 2,
//        mainAxisSpacing: 20,
//        crossAxisSpacing: 20,
      ),
      itemBuilder: (context, index) => demonData[index]['isCalling']
          ? UserCallingCard(
              name: demonData[index]['name'], image: demonData[index]['image'])
          : Image.asset(
              demonData[index]['image'],
              fit: BoxFit.cover,
            ),
    );
  }
}

List<Map<String, dynamic>> demonData = [
  {
    "isCalling": false,
    "name": "User 1",
    "image": "assets/images/goup_call_1.png"
  },
  {
    "isCalling": true,
    "name": "Rouen Pro",
    "image": "assets/images/group_call_face_small.png"
  },
  {
    "isCalling": false,
    "name": "User 1",
    "image": "assets/images/group_call_face_2.png"
  },
  {
    "isCalling": false,
    "name": "User 1",
    "image": "assets/images/group_call_face_3.png"
  }
];
