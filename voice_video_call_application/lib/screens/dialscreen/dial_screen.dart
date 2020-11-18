import 'package:flutter/material.dart';
import 'package:voicevideocallapplication/screens/audioCallWithImage/constants.dart';
import 'package:voicevideocallapplication/screens/audioCallWithImage/size.config.dart';
import 'components/body.dart';

class DialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Body(),
    );
  }
}
