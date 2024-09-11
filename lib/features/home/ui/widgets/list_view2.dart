import 'package:flutter/material.dart';
import '../../../beverages/beverages_screen.dart';

class ListViewProduct2 extends StatelessWidget {
  const ListViewProduct2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const BeveragesScreen(),
            ),
          );
        },
        child: Container(
          height: 210, // Specify a fixed height
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
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
                        'assets/images/falfal.png',
                        width: 48,
                        height: 56,
                      ),
                      ListTile(
                        title: Text(
                          'pall peper red ',
                          style: TextStyle(fontSize: 13),
                        ),
                        subtitle: Text('1 kg, Priceg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 13, bottom: 10, right: 10),
                        child: Row(
                          children: [
                            Text('\$4.5'),
                            Spacer(),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff53B175)),
                              child: Icon(Icons.add),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
