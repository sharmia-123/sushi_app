import 'package:flutter/material.dart';
import 'package:sushi_app/app_colors/theme.dart';

class CircleButton extends StatelessWidget {
  final IconData iconname;
  final Function()? onTap;
  const CircleButton({super.key,
  required this.iconname,
  required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: buttoncolor,
      ),
      child: Center(
        child: Icon(iconname, color: white,),
      ),
    ),
    );
  }
}