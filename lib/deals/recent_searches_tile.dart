import 'package:amazon_clone/deals/recent_searches_model.dart';
import 'package:flutter/material.dart';

class RecentSearchesTile extends StatelessWidget {
  final RecentSearchesModel recentSearchItem;

  const RecentSearchesTile(
      {super.key,
        required this.recentSearchItem});

  @override
  Widget build(BuildContext context) {
    String rupees = recentSearchItem.price.substring(0, 1);
    String lastTwo = recentSearchItem.price.substring(recentSearchItem.price.length-2, recentSearchItem.price.length);
    String price = recentSearchItem.price.substring(1, recentSearchItem.price.length-3);
    String name = recentSearchItem.name;
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
            recentSearchItem.image,
            fit: BoxFit.contain,
          ),
        ),
        Text(
          name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        Row(
          children: [
            SizedBox(
              height: 23,
              child: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  rupees,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              child: Text(
                price,
                style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 23,
              child: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  lastTwo,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
