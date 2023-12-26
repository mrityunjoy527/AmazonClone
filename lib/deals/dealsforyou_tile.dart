import 'package:amazon_clone/deals/deal_model.dart';
import 'package:flutter/material.dart';

class DealsForYouTile extends StatelessWidget {
  final DealModel dealItem;

  const DealsForYouTile(
      {super.key,
      required this.dealItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade200,),
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          height: 200,
          width: MediaQuery.of(context).size.width,
          child: Image.network(
            dealItem.image,
            fit: BoxFit.contain,
          ),
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Colors.pink.shade600,
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              margin: const EdgeInsets.only(right: 6.0),
              child: Text(
                dealItem.discount,
                style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Text(
              dealItem.name,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w700,
                color: Colors.pink.shade600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
