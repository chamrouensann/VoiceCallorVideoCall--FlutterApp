import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:voicevideocallapplication/components/rounded_button.dart';
import 'package:voicevideocallapplication/screens/audioCallWithImage/constants.dart';
import 'package:voicevideocallapplication/screens/audioCallWithImage/size.config.dart';
import 'components/body.dart';

class GroupCallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/Icon Back.svg"),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/Icon User.svg",
            height: 24,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

class buildBottomNavBar extends StatelessWidget {
  const buildBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              RoundedButton(
                size: 50,
                iconSrc: "assets/icons/Icon Close.svg",
                color: kRedColor,
                iconColor: Colors.white,
                press: () {},
              ),
              Spacer(flex: 3),
              RoundedButton(
                size: 50,
                iconSrc: "assets/icons/Icon Volume.svg",
                color: Color(0xFF2C384D),
                iconColor: Colors.white,
                press: () {},
              ),
              Spacer(),
              RoundedButton(
                size: 50,
                iconSrc: "assets/icons/Icon Mic.svg",
                color: Color(0xFF2C384D),
                iconColor: Colors.white,
                press: () {},
              ),
              Spacer(),
              RoundedButton(
                size: 50,
                iconSrc: "assets/icons/Icon Video.svg",
                color: Color(0xFF2C384D),
                iconColor: Colors.white,
                press: () {},
              ),
              Spacer(),
              RoundedButton(
                size: 50,
                iconSrc: "assets/icons/Icon Repeat.svg",
                color: Color(0xFF2C384D),
                iconColor: Colors.white,
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
