import 'package:flutter/material.dart';

class continerProductdateils extends StatelessWidget {
  const continerProductdateils({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
      child: Container(
          height: 300,
          width: double.infinity,
          color: const Color(0xffF2F3F2),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.file_upload_outlined),
                  ),
                ],
              ),
              Image.asset('assets/images/Vector.png'),
            ],
          )),
    );
  }
}
