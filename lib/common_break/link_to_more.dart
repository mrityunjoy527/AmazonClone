import 'package:flutter/material.dart';

class LinkToMore extends StatelessWidget {
  final String text;
  const LinkToMore({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 11.0, top: 10.0),
      width: MediaQuery.of(context).size.width,
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          color: Colors.cyan.shade900,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
