import 'package:flutter/material.dart';
import 'package:sushi_app/app_colors/theme.dart';
import 'package:sushi_app/utils/circle_button.dart';
import 'package:sushi_app/utils/my_button.dart';
import 'package:sushi_app/utils/product_details.dart';

int currentIndex = 0;
class ProductInfoThree extends StatefulWidget {
  const ProductInfoThree({super.key});

  @override
  State<ProductInfoThree> createState() => _ProductInfoThreeState();
}

class _ProductInfoThreeState extends State<ProductInfoThree> {
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
              imagepath: 'lib/images/sushi(4).jpg',
              rating: '5.0',
              iconnme: Icons.star,
              productname: 'Nigiri Sushi',
              productdsc:
              'Nigiri Sushi represents the height of simplicity, featuring a masterfully sliced piece of raw fish draped over a hand-pressed mound of seasoned rice. A tiny dab of wasabi is often hidden inside to elevate the flavor. It is designed to melt on the tongue, highlighting the pure quality of fresh seafood and vinegared rice.',
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
                  'Rs. 349',
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