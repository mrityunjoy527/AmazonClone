import 'package:amazon_clone/deals/deal_model.dart';
import 'package:amazon_clone/games/game_tile.dart';
import 'package:flutter/material.dart';

class GamesView extends StatelessWidget {
  final List<DealModel> games;
  const GamesView({super.key, required this.games});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: 470,
      child: GridView.builder(
        itemCount: games.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 240,
          crossAxisSpacing: 10,
        ),
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return GameTile(dealItem: games[index]);
        },
      ),
    );
  }
}
