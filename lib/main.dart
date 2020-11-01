import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart.dart';
import 'package:shop_app/screens/cart-screen.dart';
import 'package:shop_app/screens/product-details-screen.dart';
import './screens/product_overview_screen.dart';
import './providers/products-provider.dart';

void main() => runApp(MyShopApp());

class MyShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
      ],
      child: MaterialApp(
        title: 'Shop App',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductOverView(),
        routes: {
          ProductDetails.routName: (ctx) => ProductDetails(),
          CartScreen.routName: (ctx) => CartScreen(),
        },
      ),
    );
  }
}
