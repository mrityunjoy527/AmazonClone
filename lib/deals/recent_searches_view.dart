import 'package:amazon_clone/data/product_preferences.dart';
import 'package:amazon_clone/deals/recent_searches_tile.dart';
import 'package:flutter/material.dart';

class RecentSearchesView extends StatelessWidget {
  const RecentSearchesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: 520,
      child: GridView.builder(
        itemCount: recentSearches.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 250,
          crossAxisSpacing: 10,
        ),
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return RecentSearchesTile(recentSearchItem: recentSearches[index]);
        },
      ),
    );
  }
}
