import 'package:flutter/material.dart';

import '../widgets/product_grid.dart';

class ProductsOverViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop App'),
      ),
      body: ProductGrid(),
    );
  }
}
