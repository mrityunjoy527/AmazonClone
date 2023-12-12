import 'package:amazon_clone/feature_item.dart';

List<Map<String, String>> dataImages = [
  {
    'image':
        'https://m.media-amazon.com/images/W/MEDIAX_792452-T1/images/I/21r5rCvcAQL._SX100_SY100_.jpg',
    'name': 'Prime',
  },
  {
    'image':
        'https://m.media-amazon.com/images/I/21RpE6TZc4L._SX100_SY100_.png',
    'name': 'Travel',
  },
  {
    'image':
        'https://m.media-amazon.com/images/I/21dR3LurIkL._SX100_SY100_.png',
    'name': 'Travel',
  },
  {
    'image':
        'https://m.media-amazon.com/images/I/31ICLWjUdHL._SX100_SY100_.png',
    'name': 'Movies',
  },
  {
    'image':
        'https://m.media-amazon.com/images/W/MEDIAX_792452-T1/images/I/11S4r-bgNEL._SX100_SY100_.jpg',
    'name': 'Home',
  },
  {
    'image':
        'https://m.media-amazon.com/images/W/MEDIAX_792452-T1/images/I/110goaYwsDL._SX100_SY100_.jpg',
    'name': 'miniTV',
  },
  {
    'image':
        'https://m.media-amazon.com/images/W/MEDIAX_792452-T1/images/I/11V7tDHLoyL._SX100_SY100_.jpg',
    'name': 'Mobiles',
  },
  {
    'image':
        'https://m.media-amazon.com/images/W/MEDIAX_792452-T1/images/I/11luqHr9bsL._SX100_SY100_.jpg',
    'name': 'Books, Toys',
  },
  {
    'image':
        'https://m.media-amazon.com/images/W/MEDIAX_792452-T1/images/I/312t+JcSoDL._SX100_SY100_.jpg',
    'name': 'Fashion',
  },
  {
    'image':
        'https://m.media-amazon.com/images/W/MEDIAX_792452-T1/images/I/11n0LdtsN7L._SX100_SY100_.jpg',
    'name': 'Deals',
  },
  {
    'image':
        'https://m.media-amazon.com/images/I/21xXjwTSVIL._SX100_SY100_.png',
    'name': 'Electronics',
  },
  {
    'image':
        'https://m.media-amazon.com/images/W/MEDIAX_792452-T1/images/I/31dZ-+LnrCL._SX100_SY100_.jpg',
    'name': 'Beauty',
  },
  {
    'image':
        'https://m.media-amazon.com/images/W/MEDIAX_792452-T1/images/I/11gXebGhu6L._SX100_SY100_.jpg',
    'name': 'Furniture',
  },
  {
    'image':
        'https://m.media-amazon.com/images/I/21RpE6TZc4L._SX100_SY100_.png',
    'name': 'Grocery',
  },
  {
    'image':
        'https://m.media-amazon.com/images/I/21m+wFNorcL._SX100_SY100_.png',
    'name': 'Pharmacy',
  },
  {
    'image':
        'https://m.media-amazon.com/images/W/MEDIAX_792452-T1/images/I/118lbTsRMWL._SX100_SY100_.jpg',
    'name': 'Appliances',
  },
];

List<String> salesAndOffers = [
  'https://m.media-amazon.com/images/W/MEDIAX_792452-T1/images/I/61TdrdfD43L._SR1236,1080_.jpg',
  'https://m.media-amazon.com/images/W/MEDIAX_792452-T1/images/I/61b9c7QkNXL._SR1236,1080_.jpg',
  'https://m.media-amazon.com/images/W/MEDIAX_792452-T1/images/I/61jZPQk1lYL._SR1236,1080_.jpg',
  'https://m.media-amazon.com/images/I/81e7+GHP29L._SR1236,1080_.png',
  'https://m.media-amazon.com/images/W/MEDIAX_792452-T1/images/I/81WdlRQkUEL._SR1236,1080_.jpg',
  'https://m.media-amazon.com/images/W/MEDIAX_792452-T1/images/I/610ylakiPML._SR1236,1080_.jpg',
  'https://m.media-amazon.com/images/W/MEDIAX_792452-T1/images/I/71J5OTF04nL._SR1236,1080_.jpg',
];

List<FeatureItem> features = dataImages
    .map(
      (item) => FeatureItem(
        image: item['image'] as String,
        name: item['name'] as String,
      ),
    )
    .toList();
