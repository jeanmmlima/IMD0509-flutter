import 'dart:io';

import 'package:f5_provider_cart/models/carrinho.dart';
import 'package:f5_provider_cart/models/catalogo.dart';
import 'package:f5_provider_cart/utils/theme.dart';
import 'package:f5_provider_cart/views/carrinho.dart';
import 'package:f5_provider_cart/views/catalogo.dart';
import 'package:f5_provider_cart/views/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Usar MultiProvider quando é necessário prover múltiplos componentes.
    return MultiProvider(
      providers: [
        //Simples provider já que catálogo não muda
        Provider(create: (context) => CatalogModel()),
        // CartModel é implementado como um ChangeNotifier, que chama para o uso
        // de ChangeNotifierProvider. Além disso, CartModel depende
        // no CatalogModel, portanto, é necessário um ProxyProvider.
        ChangeNotifierProxyProvider<CatalogModel, CartModel>(
          create: (context) => CartModel(),
          update: (context, catalog, cart) {
            if (cart == null) throw ArgumentError.notNull('cart');
            cart.catalog = catalog;
            return cart;
          },
        ),
      ],
      child: MaterialApp(
        title: 'Provider Demo',
        theme: appTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => const MyLogin(),
          '/catalog': (context) => const MyCatalog(),
          '/cart': (context) => const MyCart(),
        },
      ),
    );
  }
}
