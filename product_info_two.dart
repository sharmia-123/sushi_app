import 'package:flutter/material.dart';
import 'package:sushi_app/app_colors/theme.dart';
import 'package:sushi_app/utils/circle_button.dart';
import 'package:sushi_app/utils/my_button.dart';
import 'package:sushi_app/utils/product_details.dart';

int currentIndex = 0;
class ProductInfoTwo extends StatefulWidget {
  const ProductInfoTwo({super.key});

  @override
  State<ProductInfoTwo> createState() => _ProductInfoTwoState();
}

class _ProductInfoTwoState extends State<ProductInfoTwo> {
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
              imagepath: 'lib/images/sushi(3).jpg',
              rating: '3.4',
              iconnme: Icons.star,
              productname: 'Uramaki',
              productdsc:
              'Uramaki is an inside-out roll where the seasoned rice forms the outer layer, often coated in sesame seeds or roe for extra crunch. The seaweed sheet is hidden on the inside, wrapped tightly around a variety of fillings like avocado, cucumber, and crab. It is a popular, modern style that offers a perfect balance of creamy and crunchy textures in every bite.',
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
                  'Rs. 340',
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
