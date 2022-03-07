import 'package:flutter/material.dart';

////
// Multi-line constants
////
const TextStyle kWhiteFontOswaldHeader = TextStyle(
  color: Color(0xFFFFFFFB),
  fontFamily: 'oswald',
  fontSize: 36.0,
);

const TextStyle kWhiteFontOswaldSubHeader = TextStyle(
  color: Color(0xFFFFFFFB),
  fontFamily: 'oswald',
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  shadows: [kBlackShadow],
);

/// Image name text
const Image kSunnyImage = Image(
  image: AssetImage('assets/images/jeremy-allouche-_sunny_mountains.jpeg'),
);

const Image kSunAndCloudImage = Image(
  image: AssetImage('assets/images/char-beck-_sun_cloud_mountains.jpeg'),
);

const Image kOvercastImage = Image(
  image: AssetImage('assets/images/joe-gardner-_overcast.jpeg'),
);

const Image kCloudImage = Image(
  image: AssetImage('assets/images/fabrizio-conti-_cloudy_mountains.jpeg'),
);

const Image kRainyImage = Image(
  image: AssetImage('assets/images/filip-zrnzevic-_rainy.jpeg'),
);

const Image kThunderImage = Image(
  image: AssetImage('assets/images/karsten-wurth-thunder-clouds.jpeg'),
);

const Image kSnowImage = Image(
  image: AssetImage('assets/images/william-topa-_snowy.jpeg'),
);


////
// Single-line constants
////
/// Colors
const Color kLightColor = Color(0xFFFFFFFB);
const Color kDarkColor = Color(0xFF1C415B);
const Shadow kBlackShadow = Shadow(color: Color(0x29000000), offset: Offset(0, 3.0), blurRadius: 12.0,);
const BoxShadow kBlackBoxShadow = BoxShadow(color: Color(0x29000000), offset: Offset(0, 3.0), blurRadius: 6.0,);

/// Icons

/// Fonts
