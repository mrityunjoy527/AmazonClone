import 'package:flutter/material.dart';

import '../features/feature_model.dart';

class AmazonPayServicesTile extends StatelessWidget {
  final FeatureModel featureItem;
  final double width;
  final double height;
  const AmazonPayServicesTile({super.key, required this.featureItem, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(featureItem.image, width: width, fit: BoxFit.contain, height: height,),
        Text(featureItem.name, style: const TextStyle(fontSize: 11.0),),
      ],
    );
  }
}
