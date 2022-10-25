import 'package:flutter/material.dart';

class PostButton extends StatelessWidget {
  final icon;
  final color;
  final String number;

  const PostButton(
      {super.key,
      required this.icon,
      required this.number,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: 42,
            color: color,
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(number),
        ],
      ),
    );
  }
}
