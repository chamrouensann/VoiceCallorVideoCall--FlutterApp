import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:voicevideocallapplication/components/dial_user_pic.dart';
import 'package:voicevideocallapplication/components/rounded_button.dart';
import 'package:voicevideocallapplication/screens/audioCallWithImage/constants.dart';
import 'package:voicevideocallapplication/screens/audioCallWithImage/size.config.dart';

import 'dial_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Sann Chamrouen",
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.white),
            ),
            Text(
              "Calling....",
              style: TextStyle(color: Colors.white60),
            ),
            VerticalSpacing(),
            DailUserPic(
              image: "assets/images/calling_face.png",
            ),
            Spacer(),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                DialButton(
                  press: () {},
                  iconSrc: "assets/icons/Icon Mic.svg",
                  text: "Audio",
                ),
                DialButton(
                  press: () {},
                  iconSrc: "assets/icons/Icon Volume.svg",
                  text: "Voice",
                ),
                DialButton(
                  press: () {},
                  iconSrc: "assets/icons/Icon Video.svg",
                  text: "Video",
                ),
                DialButton(
                  press: () {},
                  iconSrc: "assets/icons/Icon Message.svg",
                  text: "Message",
                ),
                DialButton(
                  press: () {},
                  iconSrc: "assets/icons/Icon User.svg",
                  text: "Add Contact",
                ),
                DialButton(
                  press: () {},
                  iconSrc: "assets/icons/Icon Voicemail.svg",
                  text: "Voice mail",
                ),
              ],
            ),
            VerticalSpacing(),
            RoundedButton(
              press: () {},
              color: kRedColor,
              iconColor: Colors.white,
              iconSrc: "assets/icons/call_end.svg",
            ),
          ],
        ),
      ),
    );
  }
}
