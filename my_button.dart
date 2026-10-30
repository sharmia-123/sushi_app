import 'package:flutter/material.dart';
import 'package:sushi_app/app_colors/theme.dart';

class MyButton extends StatelessWidget {
  final String buttontext;
  final Function()? onTap;

  const MyButton({super.key,
  required this.buttontext,
  required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      decoration: BoxDecoration(
        color: buttoncolor,
      ),
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(buttontext, style: TextStyle(color: white),),
          const SizedBox(width: 10.0,),
          Icon(Icons.arrow_forward, color: white,),
        ],
      ),
    ),
    );
  }
}