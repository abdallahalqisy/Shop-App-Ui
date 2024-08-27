import 'package:flutter/material.dart';
import 'package:shopapp/features/product_detail/widgets/horizantel_line.dart';

class customRow extends StatefulWidget {
  final IconData icon;
  const customRow({
    super.key,
    required this.icon,
  });

  @override
  _CustomRowState createState() => _CustomRowState();
}

class _CustomRowState extends State<customRow> {
  bool _isExpanded = false;

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Natural Red Apple',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Spacer(),
              IconButton(
                onPressed: _toggleExpand,
                icon: Icon(
                  widget.icon,
                  color: Color(0xff7C7C7C),
                ),
              ),
            ],
          ),
          if (_isExpanded) ...[
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15, top: 10),
              child: Text(
                'Apples Are Nutritious. Apples May Be Good For Weight Loss. Apples May Be Good For Your Heart. As Part Of A Healthy And Varied Diet',
              ),
            ),
            horizantelLine()
          ],
        ],
      ),
    );
  }
}
