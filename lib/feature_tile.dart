import 'package:amazon_clone/feature_item.dart';
import 'package:flutter/material.dart';

class FeatureTile extends StatelessWidget {
  final FeatureItem featureItem;
  const FeatureTile({super.key, required this.featureItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 13.0, right: 1.5, top: 9.0),
      child: Column(
        children: [
          Image.network(featureItem.image, width: 50,),
          const SizedBox(height: 7.0,),
          Text(featureItem.name, style: TextStyle(fontSize: 11.0),),
        ],
      ),
    );
  }
}
