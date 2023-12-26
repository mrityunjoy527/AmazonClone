import 'package:flutter/material.dart';

import 'feature_model.dart';

class FeatureTile extends StatelessWidget {
  final FeatureModel featureItem;
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
