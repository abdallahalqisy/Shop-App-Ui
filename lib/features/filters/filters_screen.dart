import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  Map<String, bool> categories = {
    "Eggs": false,
    "Noodles & Pasta": false,
    "Chips & Crisps": false,
    "Fast Food": false,
  };

  Map<String, bool> brands = {
    "Individual Collection": false,
    "Cocola": false,
    "Ifad": false,
    "Kazi Farms": false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Filter',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Categories',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ...categories.keys.map((category) {
              return CheckboxListTile(
                title: Text(category),
                value: categories[category],
                onChanged: (bool? value) {
                  setState(() {
                    categories[category] = value!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.green,
              );
            }).toList(),
            const SizedBox(height: 20),
            const Text(
              'Brand',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ...brands.keys.map((brand) {
              return CheckboxListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                title: Text(brand),
                value: brands[brand],
                onChanged: (bool? value) {
                  setState(() {
                    brands[brand] = value!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.green,
              );
            }).toList(),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {
                  'categories': categories,
                  'brands': brands,
                });
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green, // White text color
                minimumSize:
                    const Size(double.infinity, 50), // Full width button
              ),
              child: const Center(
                child: Text('Apply Filter'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
