import 'package:flutter/material.dart';

import '../deals/deal_model.dart';

class GameTile extends StatelessWidget {
  final DealModel dealItem;

  const GameTile({super.key, required this.dealItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.network(
              dealItem.image,
              fit: BoxFit.cover,
              isAntiAlias: false,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              dealItem.name,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 14.5,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
