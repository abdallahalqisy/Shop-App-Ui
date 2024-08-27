import 'package:flutter/material.dart';
import 'package:shopapp/features/cart/card_screen.dart';

class textHomeScreen extends StatelessWidget {
  final String text;
  const textHomeScreen({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 10),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyCartScreen(),
                ),
              );
            },
            child: const Text('See All', style: TextStyle(color: Colors.green)),
          ),
        ],
      ),
    );
  }
}
