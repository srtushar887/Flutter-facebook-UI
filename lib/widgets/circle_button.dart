import 'package:flutter/material.dart';
import 'package:a_srtappfacebookui/data/data.dart';
class CircleButton extends StatelessWidget {

  final IconData icon;
  final double iconSize;
  final Function onPressed;

  CircleButton({Key key, @required this.icon,@required this.iconSize,@required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          shape: BoxShape.circle
      ),
      child: IconButton(
        icon: Icon(icon),
        iconSize: iconSize,
        color: Colors.black,
        onPressed: onPressed,
      ),
    );
  }
}

