import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SponsorImage extends StatelessWidget {
  const SponsorImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade400,
            width: 2,
          ),
        ),
      ),
      child: Column(
        children: [
          Image.network(
            'https://m.media-amazon.com/images/I/61h99yQ1USL._SR1050,1050_.jpg',
            width: 450,
            fit: BoxFit.fitWidth,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Sponsored",
                style: TextStyle(
                  color: Colors.grey.shade700
                ),
              ),
              Icon(
                CupertinoIcons.info_circle_fill,
                size: 17,
                color: Colors.grey.shade700,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
