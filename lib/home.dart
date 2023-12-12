import 'package:amazon_clone/feature_tile.dart';
import 'package:amazon_clone/features.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int salesAndOffersIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.blue.shade200,
                Colors.teal.shade200,
                Colors.teal.shade100,
              ],
            ),
          ),
        ),
        title: Material(
          borderRadius: const BorderRadius.all(Radius.circular(7.0)),
          elevation: 3.0,
          child: TextField(
            cursorColor: Colors.teal,
            cursorWidth: 3.0,
            cursorHeight: 27.0,
            textAlignVertical: const TextAlignVertical(y: 1),
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(7.0),
                ),
                borderSide: BorderSide(
                  width: 1.0,
                  color: Colors.grey,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(7.0),
                ),
                borderSide: BorderSide(
                  width: 1.0,
                  color: Colors.grey,
                ),
              ),
              hintStyle: TextStyle(color: Colors.grey.shade600),
              hintText: 'Search Amazon.in',
              prefixIcon: const Icon(CupertinoIcons.search),
              suffixIcon: const Icon(
                Icons.mic_none,
                color: Colors.grey,
              ),
              constraints: const BoxConstraints(
                maxWidth: 290.0,
                maxHeight: 45.0,
              ),
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: const Icon(
              Icons.qr_code_scanner_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 45,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.blue.shade100,
                    Colors.teal.shade100,
                    Colors.teal.shade50,
                  ],
                ),
              ),
              child: const Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  SizedBox(
                    width: 7.0,
                  ),
                  Text("Deliver to Mrityunjoy - Malbazar 735221"),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
            SizedBox(
              height: 90,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: features.length,
                itemBuilder: (context, index) {
                  return FeatureTile(featureItem: features[index]);
                },
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -19),
              child: Stack(
                children: [
                  CarouselSlider(
                    items: salesAndOffers
                        .map(
                          (e) => Image.network(
                            e,
                            width: double.infinity,
                            fit: BoxFit.fitWidth,
                          ),
                        )
                        .toList(),
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      viewportFraction: 1.0,
                      initialPage: 0,
                      aspectRatio: 1,
                      onPageChanged: (idx, reason) {
                        setState(() {
                          salesAndOffersIdx = idx;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 220),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < salesAndOffers.length; i++)
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.shade600,
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              color: salesAndOffersIdx == i? Colors.cyan.shade700: Colors.white,
                            ),
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
