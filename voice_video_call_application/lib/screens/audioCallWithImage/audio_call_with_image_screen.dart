import 'package:flutter/material.dart';
import 'package:voicevideocallapplication/screens/audioCallWithImage/size.config.dart';

import 'components/body.dart';

class AudioCallWithImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
