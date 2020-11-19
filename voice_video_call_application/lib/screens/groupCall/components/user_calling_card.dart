import 'package:flutter/material.dart';
import 'package:voicevideocallapplication/components/dial_user_pic.dart';
import 'package:voicevideocallapplication/screens/audioCallWithImage/constants.dart';
import 'package:voicevideocallapplication/screens/audioCallWithImage/size.config.dart';

class UserCallingCard extends StatelessWidget {
  const UserCallingCard({
    Key key,
    @required this.image,
    @required this.name,
  }) : super(key: key);

  final String image, name;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DailUserPic(
            size: 200,
            image: image,
          ),
          VerticalSpacing(
            of: 10,
          ),
          Text(
            "Rouen Pro",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          Text(
            name,
            style: TextStyle(
              color: Colors.white60,
            ),
          )
        ],
      ),
    );
  }
}
