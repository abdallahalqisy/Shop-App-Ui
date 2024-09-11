import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/util/injection.dart';
import '../../core/util/my_repo.dart';
import '../../core/util/web_service.dart';
import '../../cubit/my_cubit.dart';
import '../home/ui/home_screan.dart';
import 'widgets/bottom.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/back_ground.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 420, // Adjust this value to move the image vertically
            left: 170, // Adjust this value to move the image horizontally
            child: Image.asset(
              'assets/images/logo.png',
              width: 48,
              height: 56,
            ),
          ),
          Positioned(
            top: 490, // Adjust this value to move the image vertically
            left: 70, // Adjust this value to move the image horizontally
            child: Image.asset(
              'assets/images/text.png',
              width: 253,
              height: 86,
            ),
          ),
          const Positioned(
            top: 580, // Adjust this value to move the image vertically
            left: 70,
            child: Text(
              'Get Your Grousers in as fast as one hour',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Positioned(
              top: 620,
              left: MediaQuery.of(context).size.width / 24,
              child: CustomButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (BuildContext context) => CharactersCubit(
                            CharacterRepo(CharactersWebServices())),
                        child: HomeScrean(),
                      ),
                    ),
                  );
                },
                text: 'Get started',
              )),
        ],
      ),
    );
  }
}
