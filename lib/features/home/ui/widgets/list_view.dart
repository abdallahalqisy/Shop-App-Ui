import 'package:flutter/material.dart';
import 'package:redacted/redacted.dart';
import '../../../../core/util/product.dart';

import '../../../product_detail/product_details.dart';

// ignore: must_be_immutable
class ListViewProduct extends StatefulWidget {
  late List<Character> character;

  ListViewProduct({super.key, required this.character});

  @override
  State<ListViewProduct> createState() => _ListViewProductState();
}

class _ListViewProductState extends State<ListViewProduct> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        height: 210, // Specify a fixed height
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.character.length,
          itemBuilder: (context, index) {
            final character = widget.character[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailsScreen(
                        product: character,
                      ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                  ),
                  height: 220,
                  width: 150,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 90, // Set a fixed height for the image
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Image(image: NetworkImage(character.image)),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          maxLines: 1,
                          character.title,
                          style: const TextStyle(fontSize: 13),
                        ),
                        // subtitle: Text('${character.price}'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0, left: 13, bottom: 0, right: 10),
                        child: Row(
                          children: [
                            Text('\$${character.price}'),
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
                ).redacted(
                  context: context,
                  redact: false,
                  configuration: RedactedConfiguration(
                    animationDuration:
                        const Duration(milliseconds: 1000), //default
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
