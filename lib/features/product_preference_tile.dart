import 'package:flutter/material.dart';

import 'feature_model.dart';

class ProductPreferenceTile extends StatelessWidget {
  final FeatureModel featureItem;

  const ProductPreferenceTile({super.key, required this.featureItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: featureItem.name == "Just Image"
          ? const EdgeInsets.all(0.0)
          : featureItem.name == "Need Stack"
              ? const EdgeInsets.all(0.0)
              : const EdgeInsets.all(5.0),
      width: 160,
      margin: const EdgeInsets.only(left: 10.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            offset: Offset(0, 3),
            color: Colors.grey,
          ),
        ],
      ),
      child: featureItem.name == "Just Image"
          ? ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              child: Image.network(
                featureItem.image,
                fit: BoxFit.fill,
              ),
            )
          : featureItem.name == "Need Stack"
              ? Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      child: Image.network(
                        featureItem.image,
                        fit: BoxFit.cover,
                        width: 160,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Rewards worth ₹300 expiring",
                          maxLines: 2,
                          style: TextStyle(fontSize: 17.0),
                        ),
                      ),
                    ),
                  ],
                )
              : Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        featureItem.name,
                        maxLines: 2,
                        style: const TextStyle(fontSize: 17.0),
                      ),
                    ),
                    Image.network(
                      featureItem.image,
                      fit: BoxFit.fitHeight,
                      height: 140,
                    ),
                  ],
                ),
    );
  }
}
