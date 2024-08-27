import 'package:flutter/material.dart';
import 'package:shopapp/features/product_detail/product_details.dart';

class ListViewProduct extends StatelessWidget {
  const ListViewProduct({
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
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductDetailsScreen(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                  ),
                  height: 200,
                  width: 150,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/moz.png',
                        width: 48,
                        height: 56,
                      ),
                      const ListTile(
                        title: Text(
                          'Organic pananas',
                          style: TextStyle(fontSize: 13),
                        ),
                        subtitle: Text('1 kg, Priceg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 13, bottom: 10, right: 10),
                        child: Row(
                          children: [
                            const Text('\$4.5'),
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
              ),
            );
          },
        ),
      ),
    );
  }
}
