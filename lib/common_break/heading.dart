import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String text;
  const Heading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 11.0, top: 10.0),
      width: MediaQuery.of(context).size.width,
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
      ),
    );
  }
}
