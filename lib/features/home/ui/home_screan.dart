import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopapp/features/home/ui/widgets/list_view_shimmar.dart';
import '../../../core/util/product.dart';
import '../../../cubit/my_cubit.dart';
import '../../../cubit/my_state.dart';

import '../../explore/explore_screen.dart';
import 'widgets/list_view.dart';
import 'widgets/list_view2.dart';
import 'widgets/nav_bar.dart';
import 'widgets/sele_banner.dart';
import 'widgets/text_faild.dart';
import 'widgets/text_home_screen.dart';

class HomeScrean extends StatefulWidget {
  const HomeScrean({super.key});

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  late List<Character> allCharacters;
  @override
  void initState() {
    super.initState();
    allCharacters =
        BlocProvider.of<CharactersCubit>(context).getAllCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        automaticallyImplyLeading: false, // Hide the back button
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
                    child: const SeleBanner(),
                  ),
                  const textHomeScreen(text: 'Exclusive Offers'),
                  BlocBuilder<CharactersCubit, CharactersState>(
                    builder: (context, state) {
                      if (state is CharactersLoaded) {
                        return ListViewProduct(
                          character: state.characters,
                        );
                      } else {
                        return ListViewProductShimmar();
                        // const Center(
                        //   child: CircularProgressIndicator(),
                        // );
                      }
                    },
                  ),
                  const textHomeScreen(text: 'Best Selling'),
                  BlocBuilder<CharactersCubit, CharactersState>(
                    builder: (context, state) {
                      if (state is CharactersLoaded) {
                        return ListViewProduct(
                          character: state.characters,
                        );
                      } else {
                        return ListViewProductShimmar();
                        // const Center(
                        //   child: CircularProgressIndicator(),
                        // );
                      }
                    },
                  ),
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
