import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/app_colors/theme.dart';
import 'package:sushi_app/pages/home_page.dart';
import 'package:sushi_app/utils/my_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('SUSHIMAN',
          style: GoogleFonts.dmSerifDisplay(
            fontSize: 30,
            color: white,
           ),
          ),
          Center(
            child: Image.asset('lib/images/sushi(5).png', width: 250, height: 240,),
          ),
          Text('THE TASTE OF JAPANEESE FOOD',
          style: GoogleFonts.dmSerifDisplay(fontSize: 30, color: white,),),
          Text('Feel the tate of the most popular japaneese food from anywhere and anytime',
          style: TextStyle(
            color: white,
            height: 2,
          ),
          ),
          MyButton(buttontext: 'Get Started', onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
          })
        ],
      ),),
    );
  }
}