import 'package:flutter/material.dart';
import 'package:sushi_app/app_colors/theme.dart';
import 'package:sushi_app/utils/circle_button.dart';
import 'package:sushi_app/utils/my_button.dart';
import 'package:sushi_app/utils/product_details.dart';

int currentIndex = 0;
class ProductInfoFour extends StatefulWidget {
  const ProductInfoFour({super.key});

  @override
  State<ProductInfoFour> createState() => _ProductInfoFourState();
}

class _ProductInfoFourState extends State<ProductInfoFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SizedBox(
        child: ListView(
          children: const [
            ProductDetails(
              imagepath: 'lib/images/sushi(1).jpg',
              rating: '2.4',
              iconnme: Icons.star,
              productname: 'Maki Sushi',
              productdsc:
              'Maki Sushi is the classic style of sushi rolled using a bamboo mat. It features a center of fresh fish or vegetables wrapped tightly in seasoned rice and wrapped on the outside by a clean layer of dark seaweed. Sliced into bite-sized rounds, it offers a simple, time-honored balance of clean flavors and textures.',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: background,
        height: 150,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rs. 240',
                  style: TextStyle(color: white, fontSize: 20),
                ),
                Row(
                  children: [
                    CircleButton(
                      iconname: Icons.add,
                      onTap: () {
                        setState(() {
                          currentIndex++;
                        });
                      },
                    ),
                    const SizedBox(width: 10.0),
                    Text(
                      currentIndex.toString(),
                      style: TextStyle(fontSize: 20, color: white),
                    ),
                    const SizedBox(width: 10.0),
                    CircleButton(
                      iconname: Icons.minimize,
                      onTap: () {
                        if (currentIndex > 0) {
                          setState(() {
                            currentIndex--;
                          });
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            MyButton(
              buttontext: 'Add To Cart',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}