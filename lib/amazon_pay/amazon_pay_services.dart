import 'package:flutter/material.dart';

import 'amazon_pay_services_tile.dart';
import '../features/feature_model.dart';

class AmazonPayServices extends StatelessWidget {
  const AmazonPayServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5.0),),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: GridView.count(
        padding: const EdgeInsets.only(top: 15.0),
        mainAxisSpacing: 10,
        crossAxisSpacing: 3,
        crossAxisCount: 2,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          AmazonPayServicesTile(
            featureItem: FeatureModel(
                image:
                    'https://m.media-amazon.com/images/I/11YgrZMCywL._SS70_.png',
                name: 'Amazon Pay'), width: 50, height: 50,
          ),
          AmazonPayServicesTile(
            featureItem: FeatureModel(
                image:
                    'https://m.media-amazon.com/images/I/01MARS4bb1L._SS70_.png',
                name: 'Recharge'), width: 50, height: 50,
          ),
          AmazonPayServicesTile(
            featureItem: FeatureModel(
                image:
                    'https://m.media-amazon.com/images/I/11yG-E4G3uL._SS70_.png',
                name: 'Rewards'), width: 50, height: 50,
          ),
          AmazonPayServicesTile(
            featureItem: FeatureModel(
                image:
                    'https://m.media-amazon.com/images/I/01vMjYs18BL._SS70_.png',
                name: 'Pay Bills'), width: 50, height: 50,
          ),
        ],
      ),
    );
  }
}
