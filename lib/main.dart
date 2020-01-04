import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop_app/screens/products_detail_screen.dart';
import 'package:shop_app/screens/products_overview_screen.dart';

import 'package:shop_app/providers/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (ctx) => Products(),
      child: MaterialApp(
        title: 'My Shop',
        theme: ThemeData(
            primaryColor: Colors.purple,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato'),
        home: ProductsOverViewScreen(),
        routes: {
          ProductsDetailScreen.routeName: (ctx) => ProductsDetailScreen(),
        },
      ),
    );
  }
}
