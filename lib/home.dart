import 'package:amazon_clone/amazon_pay/amazon_pay_services.dart';
import 'package:amazon_clone/common_break/break_line.dart';
import 'package:amazon_clone/common_break/heading.dart';
import 'package:amazon_clone/common_break/link_to_more.dart';
import 'package:amazon_clone/deals/deals_view.dart';
import 'package:amazon_clone/deals/items9.dart';
import 'package:amazon_clone/deals/recent_searches_view.dart';
import 'package:amazon_clone/features/feature_tile.dart';
import 'package:amazon_clone/data/features.dart';
import 'package:amazon_clone/games/games_view.dart';
import 'package:amazon_clone/features/product_preference_tile.dart';
import 'package:amazon_clone/data/product_preferences.dart';
import 'package:amazon_clone/sponsor/sponsor_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List navItems = [
    {'icon': CupertinoIcons.home, 'name': "Home"},
    {'icon': CupertinoIcons.person, 'name': "You"},
    {'icon': CupertinoIcons.layers, 'name': "More"},
    {'icon': CupertinoIcons.cart, 'name': "Cart"},
    {'icon': Icons.menu, 'name': "Menu"},
  ];
  int selected = 0;
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
              hintStyle: TextStyle(color: Colors.grey.shade600,),
              hintText: 'Search Amazon.in',
              prefixIcon: const Icon(CupertinoIcons.search,),
              suffixIcon: Container(
                margin: const EdgeInsets.only(right: 10),
                width: 60,
                child: Row(
                  children: [
                    Image.asset("assets/com.png", width: 25, color: Colors.grey,),
                    const SizedBox(width: 10,),
                    const Icon(
                      Icons.mic_none,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              constraints: const BoxConstraints(
                maxWidth: 400.0,
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
                    margin: const EdgeInsets.only(top: 270),
                    child: Column(
                      children: [
                        Row(
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
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  color: salesAndOffersIdx == i
                                      ? Colors.cyan.shade700
                                      : Colors.white,
                                ),
                              ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 100,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    Colors.white,
                                  ],
                                  stops: [
                                    0.0,
                                    1.0,
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 10.0, left: 7.0, right: 7.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: SizedBox(
                                          height: 200,
                                          child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            shrinkWrap: true,
                                            itemCount: products.length + 1,
                                            itemBuilder: (context, index) {
                                              if (index == 0) {
                                                return const AmazonPayServices();
                                              } else {
                                                return ProductPreferenceTile(
                                                  featureItem:
                                                      products[index - 1],
                                                );
                                              }
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SponsorImage(),
            const Heading(text: 'Deals for you'),
            const DealsView(),
            const LinkToMore(text: 'See all deals'),
            const BreakLine(),
            const Heading(text: 'New games this week | Play now'),
            GamesView(games: games,),
            const LinkToMore(text: 'Play more games'),
            const BreakLine(),
            const Heading(text: 'Newest in fashion for you'),
            const RecentSearchesView(),
            const BreakLine(),
            const Heading(text: 'Up to 50% off | Headphones, speakers & more'),
            Items9(items: items9,),
            const LinkToMore(text: "See more offers"),
            const BreakLine(),
            const Heading(text: 'Romance, thriller & more | Watch for FREE on miniTV'),
            GamesView(games: miniTvs,),
            const BreakLine(),
            const Heading(text: 'New items to stock up on'),
            Items9(items: items91,),
            const LinkToMore(text: "See more offers"),
            const BreakLine(),
            const Heading(text: 'Up to 65% off | Gaming accessories | Amazon Brands & more'),
            Items9(items: items92),
            const LinkToMore(text: "See more offers"),
            const BreakLine(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            selected = index;
          });
        },
        selectedFontSize: 14.0,
        unselectedFontSize: 14.0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: selected,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(navItems[0]['icon']),
            label: navItems[0]['name'],
          ),
          BottomNavigationBarItem(
            icon: Icon(navItems[1]['icon']),
            label: navItems[1]['name'],
          ),
          BottomNavigationBarItem(
            icon: Icon(navItems[2]['icon']),
            label: navItems[2]['name'],
          ),
          BottomNavigationBarItem(
            icon: Icon(navItems[3]['icon']),
            label: navItems[3]['name'],
          ),
          BottomNavigationBarItem(
            icon: Icon(navItems[4]['icon']),
            label: navItems[4]['name'],
          ),
        ],
      ),
    );
  }
}
