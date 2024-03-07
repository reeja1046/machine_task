import 'package:flutter/material.dart';
import 'package:machine_task/constants/textsize.dart';

class PaymentTextField extends StatelessWidget {
  final String title;

  const PaymentTextField({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextSize.titletext,
        ),
        const SizedBox(height: 5),
        const SizedBox(
          height: 38,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintStyle: TextSize.hinttext,
              contentPadding: EdgeInsets.all(5),
            ),
          ),
        ),
      ],
    );
  }
}
