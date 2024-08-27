import 'package:flutter/material.dart';

class CustomCartInBeveragesScreen extends StatelessWidget {
  final String text;
  final String subText;
  final String price;
  final String image;

  const CustomCartInBeveragesScreen(
      {super.key,
      required this.text,
      required this.subText,
      required this.price,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          border: Border.all(color: Colors.grey),
        ),
        height: 300,
        width: 180,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                image,
                width: 48,
                height: 56,
              ),
            ),
            ListTile(
              title: Text(
                text,
                style: const TextStyle(fontSize: 13),
              ),
              subtitle: Text(subText),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13, bottom: 5, right: 10),
              child: Row(
                children: [
                  Text(price),
                  const Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff53B175)),
                    child: const Icon(Icons.add),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
