import 'package:flutter/material.dart';
import 'package:redacted/redacted.dart';

// ignore: must_be_immutable
class ListViewProductShimmar extends StatelessWidget {
  ListViewProductShimmar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        height: 210, // Specify a fixed height
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            // final character = widget.character[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
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
                    const SizedBox(
                      height: 90, // Set a fixed height for the image
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        // child: Image(image: NetworkImage(character.image)),
                      ),
                    ),
                    const ListTile(
                        // title: Text(''
                        //     // maxLines: 1,
                        //     // character.title,
                        //     // style: const TextStyle(fontSize: 13),
                        //     ),
                        // subtitle: Text('\$'),
                        ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 0, left: 13, bottom: 0, right: 10),
                      child: Row(
                        children: [
                          // Text('\$${character.price}'),
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
                redact: true,
                configuration: RedactedConfiguration(
                  animationDuration:
                      const Duration(milliseconds: 1000), //default
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
