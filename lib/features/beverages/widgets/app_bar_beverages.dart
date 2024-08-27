import 'package:flutter/material.dart';
import 'package:shopapp/filters/filters_screen.dart';

class AppBarBeveragesScreen extends StatelessWidget {
  const AppBarBeveragesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          const SizedBox(
            width: 100,
          ),
          const Text(
            'Beverages',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 100,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FilterScreen(),
                ),
              );
            },
            icon: const Icon(Icons.format_align_right_rounded),
          ),
        ],
      ),
    );
  }
}
