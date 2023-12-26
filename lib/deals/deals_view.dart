import 'package:amazon_clone/deals/dealsforyou_tile.dart';
import 'package:amazon_clone/data/product_preferences.dart';
import 'package:flutter/material.dart';

class DealsView extends StatelessWidget {
  const DealsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: 500,
      child: GridView.builder(
        itemCount: deals.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 250,
          crossAxisSpacing: 10,
        ),
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return DealsForYouTile(dealItem: deals[index]);
        },
      ),
    );
  }
}
