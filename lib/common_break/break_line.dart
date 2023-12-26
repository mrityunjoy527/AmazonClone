import 'package:flutter/material.dart';

class BreakLine extends StatelessWidget {
  const BreakLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      width: MediaQuery.of(context).size.width,
      height: 2.0,
      color: Colors.grey.shade400,
    );
  }
}
