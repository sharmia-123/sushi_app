import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/app_colors/theme.dart';
import 'package:sushi_app/product_details/product_info_four.dart';
import 'package:sushi_app/product_details/product_info_one.dart';
import 'package:sushi_app/product_details/product_info_three.dart';
import 'package:sushi_app/product_details/product_info_two.dart';
import 'package:sushi_app/utils/my_button.dart';
import 'package:sushi_app/utils/product_list.dart';
import 'package:sushi_app/utils/product_list_vertical.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey,
      appBar: AppBar(
        leading: IconButton(onPressed: ()
        {

        }, icon: Icon(Icons.menu_sharp,),),
        elevation: 0,
        title: Text('Tokyo', style: GoogleFonts.dmSerifDisplay(),),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: grey,
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: double.infinity,
            height: 130,
            decoration: BoxDecoration(
             color: background,
             borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Get 32% Promo", style: GoogleFonts.dmSerifDisplay(color: white, fontSize: 20,),),
                    MyButton(buttontext: 'Redeem', onTap: (){}),
                  ],
                ),
                Image.asset('lib/images/sushi(6).png', width: 120, height: 100,),
              ],
            ),
          ),
          const SizedBox(height: 5.0,), 
          TextField(
            decoration: InputDecoration(
              hintText: 'search here',
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide(
                  width: 2,
                  color: white,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide(
                  width: 2,
                  color: white,
                ),
              ),
            ),
          ),
          Text('Food Menu', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,),),
          const SizedBox(height: 5.0,),
          SizedBox(
            height: 180,
            child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ProductList(productimg: 'lib/images/sushi(2).jpg',productname: 'Gunkan Maki',
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProductInfoOne()));
              },
              productprice: 'Rs. 450',
              iconname: Icons.star,
              rating: '4.9',),
              const SizedBox(width: 10.0,),              
              ProductList(productimg: 'lib/images/sushi(3).jpg',productname: 'Uramaki',
              productprice: 'Rs. 340',
              iconname: Icons.star,
              rating: '3.4',
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProductInfoTwo()));
              },),
              const SizedBox(width: 10.0,),    
              ProductList(productimg: 'lib/images/sushi(7).jpg',productname: 'Inari Sushi ',
              productprice: 'Rs. 249',
              iconname: Icons.star,
              rating: '4.3',
              onTap: ()
              {
                
              },),
            ],
          ),
          ),
          const SizedBox(height: 5.0,), 
          SizedBox(
            height: 80,
            child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              ProductListVertical(productimg: 'lib/images/sushi(4).jpg',productname: 'Nigiri Sushi',
              productprice: 'Rs. 349',
              iconname: Icons.star,
              rating: '5.0',
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProductInfoThree()));
              },
              ),
              const SizedBox(height: 10.0,),  
              ProductListVertical(productimg: 'lib/images/sushi(1).jpg',productname: 'Maki Sushi',
              productprice: 'Rs. 240',
              iconname: Icons.star,
              rating: '2.4',
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProductInfoFour()));
              },
              ),
              const SizedBox(height: 10.0,),  
              ProductListVertical(productimg: 'lib/images/sushi(8).jpg',productname: 'Temaki',
              productprice: 'Rs. 449',
              iconname: Icons.star,
              rating: '5.0',
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProductInfoFour()));
              },
              ),
            ],
          ),
          )
        ],
      ),),
    );
  }
}