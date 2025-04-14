import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/screens/page_barre_navigation.dart';
import 'package:flutter_app/screens/detail_produits.dart';
import 'package:flutter_app/e_commerce/provider/cart_provider.dart';
import 'package:flutter_app/screens/cart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
          scaffoldBackgroundColor: const Color(0xFFE2E2E2),
        ),
        home: const PageBarreNavigation(),
        routes: {
          '/detailproduit': (context) => const ProduitDetailScreen(),
          '/cart': (context) => const CartScreen(),
        },
      ),
    );
  }
}