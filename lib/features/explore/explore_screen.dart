import 'package:flutter/material.dart';
import 'package:shopapp/features/explore/widgets/card.dart';
import 'package:shopapp/features/home/ui/widgets/nav_bar.dart';
import 'package:shopapp/features/home/ui/widgets/text_faild.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        automaticallyImplyLeading: false, // Hide back button
        title: const Center(child: Text('Find products')),
      ),
      body: Stack(
        children: [
          // Main content scrollable area
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const CustomTextField(),
                  GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      CustomCard(
                        color: Color(0xff53B175),
                        title: 'Fresh Fruits\n& Vegetables',
                        imagePath: 'assets/images/pngfuel 6.png',
                      ),
                      CustomCard(
                        color: Color(0xffF8A44C),
                        title: 'Cooking Oil\n& Ghee',
                        imagePath: 'assets/images/Group 6835 (1).png',
                      ),
                      CustomCard(
                        color: Color(0xffF7A593),
                        title: 'Meat & Fish',
                        imagePath: 'assets/images/pngfuel 9.png',
                      ),
                      CustomCard(
                        color: Color(0xffD3B0E0),
                        title: 'Bakery & Snacks',
                        imagePath: 'assets/images/pngfuel 6 (3).png',
                      ),
                      CustomCard(
                        color: Color(0xffFDE598),
                        title: 'Dairy & Eggs',
                        imagePath: 'assets/images/pngfuel.png',
                      ),
                      CustomCard(
                        color: Color(0xffB7DFF5),
                        title: 'Beverages',
                        imagePath: 'assets/images/pngfuel 6 (2).png',
                      ),
                      CustomCard(
                        color: Color(0xffD3B0E0),
                        title: 'Bakery & Snacks',
                        imagePath: 'assets/images/pngfuel 6 (3).png',
                      ),
                      CustomCard(
                        color: Color(0xffF7A593),
                        title: 'Meat & Fish',
                        imagePath: 'assets/images/pngfuel 9.png',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Positioned navBar at the bottom
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: navBar(),
          ),
        ],
      ),
    );
  }
}
