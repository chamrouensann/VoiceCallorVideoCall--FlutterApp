import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:voicevideocallapplication/screens/audioCallWithImage/size.config.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    this.size = 90,
    @required this.iconSrc,
    @required this.color,
    @required this.iconColor,
    @required this.press,
  }) : super(key: key);

  final double size;
  final String iconSrc;
  final Color color, iconColor;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(size),
      width: getProportionateScreenWidth(size - 10),
      child: FlatButton(
          padding: EdgeInsets.all(15 / 64 * size),
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          onPressed: press,
          child: SvgPicture.asset(
            iconSrc,
            color: iconColor,
          )),
    );
  }
}
