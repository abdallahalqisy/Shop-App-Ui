import 'package:flutter/material.dart';
import 'package:shopapp/features/onbording/widgets/bottom.dart';
import 'package:shopapp/features/product_detail/widgets/continer_product_daitails.dart';
import 'package:shopapp/features/product_detail/widgets/custom_row.dart';
import 'package:shopapp/features/product_detail/widgets/horizantel_line.dart';
import 'package:shopapp/features/product_detail/widgets/row_add_and_minus.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const continerProductdateils(),
          const customRow(
            icon: Icons.favorite_border_outlined,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: [Text('1kg , price')],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const RowAddAndMinus(),
          const horizantelLine(),
          const customRow(icon: Icons.keyboard_arrow_down),
          const SizedBox(
            height: 20,
          ),
          const horizantelLine(),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            onPressed: () {},
            text: 'Add to bascate',
          ),
        ],
      ),
    ));
  }
}
