import 'package:flutter/material.dart';
import 'package:shopapp/features/explore/explore_screen.dart';
import 'package:shopapp/features/home/ui/widgets/list_view.dart';
import 'package:shopapp/features/home/ui/widgets/list_view2.dart';
import 'package:shopapp/features/home/ui/widgets/nav_bar.dart';
import 'package:shopapp/features/home/ui/widgets/sele_banner.dart';
import 'package:shopapp/features/home/ui/widgets/text_faild.dart';
import 'package:shopapp/features/home/ui/widgets/text_home_screen.dart';

class HomeScrean extends StatelessWidget {
  const HomeScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        automaticallyImplyLeading: false, // إخفاء زر الرجوع
        title: const Center(child: Text('Shop')),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const CustomTextField(),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ExploreScreen(),
                          ),
                        );
                      },
                      child: const SeleBanner()),
                  const textHomeScreen(text: 'Exclusive Offers'),
                  const ListViewProduct(),
                  const textHomeScreen(text: 'Best Selling'),
                  const ListViewProduct2(),
                ],
              ),
            ),
          ),
          const ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: navBar(),
          ),
        ],
      ),
    );
  }
}
