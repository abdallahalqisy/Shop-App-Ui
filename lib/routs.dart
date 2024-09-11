// // app_router.dart
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shopapp/constent/string.dart';
// import 'package:shopapp/core/util/product.dart';
// import 'package:shopapp/features/home/ui/home_screan.dart';

// import 'package:shopapp/features/onbording/onbording_screan.dart';
// import 'package:shopapp/features/product_detail/product_details.dart';

// class AppRouter {
//   Route? generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case onboardingScreen:
//         return MaterialPageRoute(builder: (_) => OnboardingScreen());
//       case homeScrean:
//         return MaterialPageRoute(builder: (_) => HomeScrean());
//       case productDetailsScreen:
//         // final character = settings.arguments as Character;
//         return MaterialPageRoute(
//           builder: (_) => ProductDetailsScreen(product: character,),
//         );
//       default:
//         return MaterialPageRoute(
//           builder: (_) => Scaffold(
//             body: Center(
//               child: Text('No route defined for ${settings.name}'),
//             ),
//           ),
//         );
//     }
//   }
// }
