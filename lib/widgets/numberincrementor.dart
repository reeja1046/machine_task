import 'package:flutter/material.dart';

class NumberIncrementer extends StatefulWidget {
  final String labelText;

  const NumberIncrementer({super.key, required this.labelText});

  @override

  
  _NumberIncrementerState createState() => _NumberIncrementerState();
}

class _NumberIncrementerState extends State<NumberIncrementer> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          width: 110,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Center(
            child: Text(widget.labelText),
          ),
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (number > 0) {
                    number--;
                  }
                });
              },
              child: const CircleAvatar(
                child: Text('-'),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Center(
                child: Text(
                  number.toString(),
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                setState(() {
                  number++;
                });
              },
              child: const CircleAvatar(
                child: Text('+'),
              ),
            )
          ],
        )
      ],
    );
  }
}
