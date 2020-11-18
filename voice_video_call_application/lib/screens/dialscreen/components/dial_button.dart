import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:voicevideocallapplication/screens/audioCallWithImage/size.config.dart';

class DialButton extends StatelessWidget {
  const DialButton({
    Key key,
    @required this.iconSrc,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String iconSrc, text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(120),
      child: FlatButton(
        padding:
            EdgeInsets.symmetric(vertical: getProportionateScreenWidth(20)),
        onPressed: () {},
        child: Column(
          children: [
            SvgPicture.asset(
              iconSrc,
              color: Colors.white,
              height: 40,
            ),
            VerticalSpacing(
              of: 5,
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            )
          ],
        ),
      ),
    );
  }
}
