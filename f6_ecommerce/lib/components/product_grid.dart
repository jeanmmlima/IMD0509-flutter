import 'package:f6_ecommerce/components/product_item.dart';
import 'package:f6_ecommerce/model/product.dart';
import 'package:f6_ecommerce/model/product_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductGrid extends StatelessWidget {
  final bool _showOnlyFavoritos;
  ProductGrid(this._showOnlyFavoritos);
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);

    final List<Product> loadedProducts =
        _showOnlyFavoritos ? provider.favoriteItems : provider.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: loadedProducts.length,
      //# ProductItem vai receber a partir do Provider
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        //create: (ctx) => Product(),
        value: loadedProducts[i],
        //child: ProductItem(product: loadedProducts[i]),
        child: ProductItem(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, //2 produtos por linha
        childAspectRatio: 3 / 2, //diemnsao de cada elemento
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
