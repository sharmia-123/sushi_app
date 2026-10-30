import 'package:flutter/material.dart';
import 'package:sushi_app/app_colors/theme.dart';
import 'package:sushi_app/utils/circle_button.dart';
import 'package:sushi_app/utils/my_button.dart';
import 'package:sushi_app/utils/product_details.dart';

int currentIndex = 0;

class ProductInfoOne extends StatefulWidget {
  const ProductInfoOne({super.key});

  @override
  State<ProductInfoOne> createState() => _ProductInfoOneState();
}

class _ProductInfoOneState extends State<ProductInfoOne> {
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
              imagepath: 'lib/images/sushi(2).jpg',
              rating: '4.9',
              iconnme: Icons.star,
              productname: 'Gunkan Maki',
              productdsc:
              'Gunkan Maki, or "battleship sushi," features a hand-formed oval of rice wrapped in a high collar of crisp seaweed to create a hollow container. This clever design safely holds loose or delicate toppings like salmon roe, sea urchin, or spicy chopped tuna. It delivers a rich, luxurious burst of flavor in a single, neat bite.',
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
                  'Rs. 450',
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
