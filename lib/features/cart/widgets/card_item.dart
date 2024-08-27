import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  final String name;
  final String weight;
  final double price;
  final String imagePath;
  final int quantity;
  final ValueChanged<int> onQuantityChanged;
  final VoidCallback onRemove;

  CartItem({
    required this.name,
    required this.weight,
    required this.price,
    required this.imagePath,
    required this.quantity,
    required this.onQuantityChanged,
    required this.onRemove,
  });

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void _incrementQuantity() {
    widget.onQuantityChanged(widget.quantity + 1);
  }

  void _decrementQuantity() {
    if (widget.quantity > 1) {
      widget.onQuantityChanged(widget.quantity - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Image.asset(
            widget.imagePath,
            height: 100,
            width: 100,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(widget.name,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Spacer(),
                    IconButton(
                      onPressed: widget.onRemove,
                      icon: const Icon(Icons.cancel),
                      color: Colors.red,
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(widget.weight, style: const TextStyle(color: Colors.grey)),
                Row(
                  children: [
                    GestureDetector(
                      onTap: _decrementQuantity,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(247, 250, 248, 1)),
                        child: const Icon(Icons.remove),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text('${widget.quantity}'),
                    const SizedBox(width: 8),
                    GestureDetector(
                      onTap: _incrementQuantity,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(247, 250, 248, 1)),
                        child: const Icon(Icons.add),
                      ),
                    ),
                    const SizedBox(width: 80),
                    Text(
                      '\$${(widget.price * widget.quantity).toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
