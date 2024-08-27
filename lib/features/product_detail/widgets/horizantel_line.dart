import 'package:flutter/material.dart';

class horizantelLine extends StatelessWidget {
  const horizantelLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Color(0xffE2E2E2), // Line color
      thickness: 2, // Line thickness
      indent: 25, // Space from the left
      endIndent: 25, // Space from the right
    );
  }
}
