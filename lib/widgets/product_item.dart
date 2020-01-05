import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './../providers/product.dart';
import './../screens/products_detail_screen.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Product>(
      builder: (ctx, product, _) => ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductsDetailScreen.routeName,
                arguments: product.id);
          },
          child: GridTile(
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black87,
              leading: IconButton(
                onPressed: () {
                  product.toggleFavoriteStatus();
                },
                icon: Icon(
                  product.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: Theme.of(context).accentColor,
                ),
              ),
              title: Text(
                product.title,
                textAlign: TextAlign.center,
              ),
              trailing: IconButton(
                icon: Icon(Icons.shopping_cart,
                    color: Theme.of(context).accentColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
