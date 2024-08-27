// import 'package:flutter/material.dart';

// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({super.key});

//   @override
//   _OnboardingScreenState createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen>
//     with SingleTickerProviderStateMixin {
//   double _opacityLogo = 0.0;
//   double _opacityTitle = 0.0;
//   double _opacitySubtitle = 0.0;

//   @override
//   void initState() {
//     super.initState();
//     _startAnimation();
//   }

//   void _startAnimation() {
//     // Delay the animations sequentially
//     Future.delayed(const Duration(milliseconds: 500), () {
//       setState(() {
//         _opacityLogo = 1.0;
//       });
//     });
//     Future.delayed(const Duration(seconds: 1), () {
//       setState(() {
//         _opacityTitle = 1.0;
//       });
//     });
//     Future.delayed(const Duration(seconds: 1, milliseconds: 500), () {
//       setState(() {
//         _opacitySubtitle = 1.0;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Expanded(
//               child: Container(
//                 color: Colors.green,
//                 child: Center(
//                   child: Padding(
//                     padding: const EdgeInsets.all(30),
//                     child: ListTile(
//                       leading: AnimatedOpacity(
//                         opacity: _opacityLogo,
//                         duration: const Duration(seconds: 1),
//                         child: Image.asset(
//                           'assets/images/logo.png',
//                         ),
//                       ),
//                       title: AnimatedOpacity(
//                         opacity: _opacityTitle,
//                         duration: const Duration(seconds: 1),
//                         child: Image.asset(
//                           'assets/images/name.png',
//                         ),
//                       ),
//                       subtitle: AnimatedOpacity(
//                         opacity: _opacitySubtitle,
//                         duration: const Duration(seconds: 1),
//                         child: Image.asset(
//                           'assets/images/sub.png',
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }