import 'package:flutter/material.dart';

class SeleBanner extends StatelessWidget {
  const SeleBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // List of banner image paths
    final List<String> bannerImages = [
      'assets/images/banner.png',
      'assets/images/welcombanner.jpeg', 'assets/images/banner.png',
      // Add more banner image paths here
    ];

    return SizedBox(
      height: 144.99, // Fixed height for the banner
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: bannerImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20), // Space between items
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Image.asset(
                bannerImages[index],
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width *
                    0.8, // Adjust width as needed
              ),
            ),
          );
        },
      ),
    );
  }
}
