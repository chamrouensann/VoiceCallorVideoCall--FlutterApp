import 'package:voicevideocallapplication/screens/audioCallWithImage/components/body.dart';
import 'package:voicevideocallapplication/screens/dialscreen/dial_screen.dart';

import 'audio_call_with_image_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DialScreen(),
    );
  }
}
