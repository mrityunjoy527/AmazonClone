import 'package:amazon_clone/deals/deal_model.dart';
import 'package:amazon_clone/deals/recent_searches_model.dart';

import '../features/feature_model.dart';

List<Map<String, String>> productImages = [
  {
    'image': 'https://m.media-amazon.com/images/I/41ACtHD08rL._MCnd_AC_.jpg',
    'name': 'Keep shopping for Mobile cases & covers',
  },
  {
    'image': 'https://m.media-amazon.com/images/I/21AlItOw9WL._MCnd_AC_.jpg',
    'name': 'Keep shopping for Hair clippers',
  },
  {
    'image': 'https://m.media-amazon.com/images/I/51bL+xB167L._MCnd_AC_.jpg',
    'name': 'Keep shopping for Hair removal scissors',
  },
  {
    'image': 'https://m.media-amazon.com/images/I/31g95j0oSGL._SR270,360_.jpg',
    'name': 'Just Image',
  },
  {
    'image': 'https://m.media-amazon.com/images/I/71uTPOuUo-L._AC_SS250_.jpg',
    'name': 'Recommended deal for you',
  },
  {
    'image': 'https://m.media-amazon.com/images/I/51HL1kUiE2L._AC_SS250_.jpg',
    'name': 'Buy it again',
  },
  {
    'image': 'https://m.media-amazon.com/images/I/41F0J3z4jjL._SR270,360_.jpg',
    'name': 'Just Image',
  },
  {
    'image': 'https://m.media-amazon.com/images/I/6101Z1sLPVL._AC_SS250_.jpg',
    'name': 'Keep shopping for Mobile Power banks',
  },
  {
    'image': 'https://m.media-amazon.com/images/I/71CmnVytluL._AC_SS250_.jpg',
    'name': 'Deal related to your saved items',
  },
  {
    'image': 'https://m.media-amazon.com/images/I/31gPRg4DipL._AC_SS250_.jpg',
    'name': '4+ star deal for you',
  },
  {
    'image': 'https://m.media-amazon.com/images/I/41VsEmpRVTL._SR270,360_.jpg',
    'name': 'Just Image',
  },
  {
    'image': 'https://m.media-amazon.com/images/I/31XePd5N11L._SY360_.jpg',
    'name': 'Need Stack',
  },
  {
    'image': 'https://m.media-amazon.com/images/I/31hXj1F4R6L._SR270,360_.jpg',
    'name': 'Just Image',
  },
  {
    'image': 'https://m.media-amazon.com/images/I/41Iz882d6OL._SR270,360_.jpg',
    'name': "Just Image",
  }
];

List<FeatureModel> products = productImages
    .map(
      (e) => FeatureModel(
        image: e['image'] as String,
        name: e['name'] as String,
      ),
    )
    .toList();

List<Map<String, String>> dealsData = [
  {
    'image': 'https://m.media-amazon.com/images/I/91sZtL83m6L._AC_SY310_.jpg',
    'discount': '42% off',
    'name': 'Deal of the Day',
  },
  {
    'image': 'https://m.media-amazon.com/images/I/61XP2w3eDiL._AC_SY310_.jpg',
    'discount': '40% off',
    'name': 'Deal of the Day',
  },
  {
    'image': 'https://m.media-amazon.com/images/I/61mpMH5TzkL._AC_SY310_.jpg',
    'discount': '24% off',
    'name': 'Deal of the Day',
  },
  {
    'image': 'https://m.media-amazon.com/images/I/61ImtvsxINL._AC_SY310_.jpg',
    'discount': '44% off',
    'name': "Deal",
  }
];

List<DealModel> deals = dealsData
    .map(
      (e) => DealModel(
        image: e['image'] as String,
        discount: e['discount'] as String,
        name: e['name'] as String,
      ),
    )
    .toList();

List<Map<String, String>> gamesData = [
  {
    'image': 'https://m.media-amazon.com/images/I/410A+RhHZ5L._SR420,420_.jpg',
    'discount': '',
    'name': 'Spin & win Marshall speaker',
  },
  {
    'image': 'https://m.media-amazon.com/images/I/41pc1PbW+cL._SR420,420_.jpg',
    'discount': '',
    'name': 'Jackpot | Chance to win 50 Points',
  },
  {
    'image': 'https://m.media-amazon.com/images/I/31e1K2s-uUL._SR420,420_.jpg',
    'discount': '',
    'name': 'Answer & win 25 Points',
  },
  {
    'image': 'https://m.media-amazon.com/images/I/41sx0Bs638L._SR420,420_.jpg',
    'discount': '',
    'name': "Funzone | Explore more",
  }
];

List<DealModel> games = gamesData
    .map(
      (e) => DealModel(
        image: e['image'] as String,
        discount: e['discount'] as String,
        name: e['name'] as String,
      ),
    )
    .toList();

List<Map<String, String>> recentSearchesData = [
  {
    'image': 'https://m.media-amazon.com/images/I/61dAklWPkaL._AC_SY310_.jpg',
    'price': '₹1,499.00',
    'name': "TAB91, Men's Polo Half Sleeve T-Shirt Pack of 6 for Summer | Cotton Polo T-Shirt Packs",
  },
  {
    'image': 'https://m.media-amazon.com/images/I/71UVbbBz4TL._AC_SY310_.jpg',
    'price': '₹849.00',
    'name': "TAB91, Men's Polo Half Sleeve Polo T-Shirt Pack of 3 for Summer",
  },
  {
    'image': 'https://m.media-amazon.com/images/I/61YoYdYfx8L._AC_SY310_.jpg',
    'price': '₹481.00',
    'name': "U.S. POLO ASSN. Men T-Shirts",
  },
  {
    'image': 'https://m.media-amazon.com/images/I/61YR0j6hTtL._AC_SY310_.jpg',
    'price': '₹656.00',
    'name': "Men Navy Solid Cotton Polo Shirt",
  }
];

List<RecentSearchesModel> recentSearches = recentSearchesData
    .map(
      (e) => RecentSearchesModel(
    image: e['image'] as String,
    price: e['price'] as String,
    name: e['name'] as String,
  ),
)
    .toList();

List<String> items9 = [
  "https://m.media-amazon.com/images/I/5128rEHKWgL._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/71BJbii7jlL._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/61dDIKxp6sL._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/61QMrdWzF6L._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/71Rwbq8XFnL._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/51-nTXuTUmL._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/511rSx+anRL._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/5196E9KgDmL._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/61bjqXUl2EL._AC_SS260_.jpg",
];

List<String> items91 = [
  "https://m.media-amazon.com/images/I/71bhDqn++ZL._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/61AtLaRmpzL._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/51f2jU+T-DL._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/41gEFwqPHuL._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/51ZhHRrsBfL._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/51QZU5qQRVL._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/51djpWwn+WL._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/615svm7MftL._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/61yTcJEBTaL._AC_SS260_.jpg",
];

List<String> items92 = [
  "https://m.media-amazon.com/images/I/61RiY9CcC2L._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/61VlmSq2E2L._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/61ojgG3SBxL._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/61vgM0gyypL._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/61zdIVCPVqL._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/61EUs6Brc-L._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/61-HASxkGvL._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/71et85YBw1L._AC_SS260_.jpg",
  "https://m.media-amazon.com/images/I/71pGjUwrUlL._AC_SS260_.jpg",
];

List<Map<String, String>> miniTVPreferences = [
  {
    'image': 'https://m.media-amazon.com/images/I/510Fo7ER2lL._SR420,420_.jpg',
    'discount': '',
    'name': 'School friends',
  },
  {
    'image': 'https://m.media-amazon.com/images/I/51CL68MHnHL._SR420,420_.jpg',
    'discount': '',
    'name': 'Campus beats season 1',
  },
  {
    'image': 'https://m.media-amazon.com/images/I/51bnKaaz5sL._SR420,420_.jpg',
    'discount': '',
    'name': 'Gutar Gu',
  },
  {
    'image': 'https://m.media-amazon.com/images/I/51mApX4l2HL._SR420,420_.jpg',
    'discount': '',
    'name': "Highway love",
  }
];

List<DealModel> miniTvs = miniTVPreferences
    .map(
      (e) => DealModel(
    image: e['image'] as String,
    discount: e['discount'] as String,
    name: e['name'] as String,
  ),
)
    .toList();