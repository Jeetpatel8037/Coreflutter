import 'package:flutter/material.dart';

import 'FruitShop.dart';
import 'homepage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const homepage(),
        'FruitShop': (context) => const FruitShop(),
      },
    ),
  );
}
