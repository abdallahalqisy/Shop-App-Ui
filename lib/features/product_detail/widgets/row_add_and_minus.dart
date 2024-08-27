import 'package:flutter/material.dart';

class RowAddAndMinus extends StatefulWidget {
  const RowAddAndMinus({super.key});

  @override
  _RowAddAndMinusState createState() => _RowAddAndMinusState();
}

class _RowAddAndMinusState extends State<RowAddAndMinus> {
  int _quantity = 1; // القيمة الافتراضية

  void _increaseQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decreaseQuantity() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: _decreaseQuantity,
            icon: Icon(Icons.remove_outlined),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color(0xffE2E2E2)),
            ),
            child: Center(
              child: Text(
                '$_quantity',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          IconButton(
            onPressed: _increaseQuantity,
            icon: Icon(Icons.add),
          ),
          Spacer(),
          Text('\$${_quantity * 4.5}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
