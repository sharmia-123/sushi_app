import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/app_colors/theme.dart';

class ProductList extends StatelessWidget {
  final String productimg;
  final String productname;
  final String productprice;
  final IconData iconname;
  final String rating;
  final Function()? onTap;
  const ProductList({super.key,
  required this.productimg,
  required this.productname,
  required this.productprice,
  required this.iconname,
  required this.rating,
  required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      width: 160,
      height: 140,
      child: Column(
        children: [
          Image.asset(productimg, width: 120, height: 110, 
          fit: BoxFit.cover,
          ),
          Text(productname, style: GoogleFonts.dmSerifDisplay(fontWeight: FontWeight.bold,fontSize: 16),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(productprice,
              style: GoogleFonts.dmSerifDisplay(fontSize: 14),),
              Row(
                children: [
                  Icon(iconname, color: Colors.amber,),
                  Text(rating,),
                ],
              )
            ],
          ),
        ],
      ),
    ),
    );
  }
}