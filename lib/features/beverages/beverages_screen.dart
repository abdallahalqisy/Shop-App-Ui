import 'package:flutter/material.dart';
import 'widgets/app_bar_beverages.dart';
import 'widgets/custom_cart_in_beverages_screen.dart';

class BeveragesScreen extends StatelessWidget {
  const BeveragesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          // إضافة SingleChildScrollView
          child: Column(
            children: [
              const AppBarBeveragesScreen(),
              GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  CustomCartInBeveragesScreen(
                    text: 'Diet Coke',
                    subText: '355ml,price',
                    price: '\$1.99',
                    image: 'assets/images/coke.png',
                  ),
                  CustomCartInBeveragesScreen(
                    text: 'Sprite can',
                    subText: '325ml,price',
                    price: '\$1.50',
                    image: 'assets/images/pngfuel 12.png',
                  ),
                  CustomCartInBeveragesScreen(
                    text: 'apple & Grape Juice',
                    subText: '2l,price',
                    price: '\$15.99',
                    image:
                        'assets/images/tree-top-juice-apple-grape-64oz 1.png',
                  ),
                  CustomCartInBeveragesScreen(
                    text: 'orange Juice',
                    subText: '2L,price',
                    price: '\$15.99',
                    image:
                        'assets/images/tree-top-juice-apple-grape-64oz 1 (1).png',
                  ),
                  CustomCartInBeveragesScreen(
                    text: 'Coca cola can',
                    subText: '355ml,price',
                    price: '\$4.99',
                    image: 'assets/images/pngfuel 13.png',
                  ),
                  CustomCartInBeveragesScreen(
                    text: 'Coca cola can',
                    subText: '355ml,price',
                    price: '\$4.99',
                    image: 'assets/images/pngfuel 14.png',
                  ),
                  CustomCartInBeveragesScreen(
                    text: 'Sprite can',
                    subText: '325ml,price',
                    price: '\$1.50',
                    image: 'assets/images/pngfuel 12.png',
                  ),
                  CustomCartInBeveragesScreen(
                    text: 'apple & Grape Juice',
                    subText: '2l,price',
                    price: '\$15.99',
                    image:
                        'assets/images/tree-top-juice-apple-grape-64oz 1.png',
                  ),
                  CustomCartInBeveragesScreen(
                    text: 'orange Juice',
                    subText: '2L,price',
                    price: '\$15.99',
                    image:
                        'assets/images/tree-top-juice-apple-grape-64oz 1 (1).png',
                  ),
                  CustomCartInBeveragesScreen(
                    text: 'Sprite can',
                    subText: '325ml,price',
                    price: '\$1.50',
                    image: 'assets/images/pngfuel 12.png',
                  ),
                  CustomCartInBeveragesScreen(
                    text: 'apple & Grape Juice',
                    subText: '2l,price',
                    price: '\$15.99',
                    image:
                        'assets/images/tree-top-juice-apple-grape-64oz 1.png',
                  ),
                  CustomCartInBeveragesScreen(
                    text: 'orange Juice',
                    subText: '2L,price',
                    price: '\$15.99',
                    image:
                        'assets/images/tree-top-juice-apple-grape-64oz 1 (1).png',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
