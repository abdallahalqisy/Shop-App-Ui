import 'package:flutter/material.dart';
import 'package:shopapp/features/cart/widgets/card_item.dart';

class MyCartScreen extends StatefulWidget {
  @override
  _MyCartScreenState createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  final List<CartItemData> _items = [
    CartItemData(
      imagePath: 'assets/images/falfal.png',
      name: 'Bell Pepper Red',
      weight: '1kg',
      price: 4.99,
      quantity: 1,
    ),
    CartItemData(
      imagePath: 'assets/images/falfal.png',
      name: 'Egg Chicken Red',
      weight: '4pcs',
      price: 1.99,
      quantity: 1,
    ),
    CartItemData(
      imagePath: 'assets/images/falfal.png',
      name: 'Organic Bananas',
      weight: '12kg',
      price: 3.00,
      quantity: 1,
    ),
    CartItemData(
      imagePath: 'assets/images/falfal.png',
      name: 'Ginger',
      weight: '250gm',
      price: 2.99,
      quantity: 1,
    ),
  ];

  double get _totalPrice {
    return _items.fold(0, (sum, item) => sum + item.price * item.quantity);
  }

  void _updateQuantity(int index, int newQuantity) {
    setState(() {
      if (newQuantity > 0) {
        _items[index].quantity = newQuantity;
      }
    });
  }

  void _removeItem(int index) {
    setState(() {
      _items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  final item = _items[index];
                  return CartItem(
                    imagePath: item.imagePath,
                    name: item.name,
                    weight: item.weight,
                    price: item.price,
                    quantity: item.quantity,
                    onQuantityChanged: (newQuantity) {
                      _updateQuantity(index, newQuantity);
                    },
                    onRemove: () {
                      _removeItem(index);
                    },
                  );
                },
              ),
            ),
            const Divider(thickness: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$${_totalPrice.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to Checkout
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Go to Checkout',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartItemData {
  final String imagePath;
  final String name;
  final String weight;
  final double price;
  int quantity;

  CartItemData({
    required this.imagePath,
    required this.name,
    required this.weight,
    required this.price,
    this.quantity = 1,
  });
}
