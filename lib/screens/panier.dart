import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/e_commerce/provider/cart_provider.dart';
import 'package:flutter_app/e_commerce/my_widget/widget_produit_dans_panier.dart';
import 'package:flutter_app/e_commerce/my_widget/cart_empty.dart';

class PanierScreen extends StatelessWidget {
  const PanierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final cartItems = cartProvider.panier;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Panier (${cartProvider.itemCount} produits)",
        ),
        actions: [
          if (cartItems.isNotEmpty)
            IconButton(
              onPressed: () => cartProvider.clear(),
              icon: const Icon(Icons.delete_sweep),
            ),
        ],
      ),
      body: cartItems.isEmpty
          ? const CartEmpty()
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return WidgetProduitPanier(
                        produitPanier: cartItems[index],
                      );
                    },
                  ),
                ),
                chekcoutsection(cartProvider.totalAmount),
              ],
            ),
    );
  }

  Widget chekcoutsection(double total) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(Colors.red),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              child: const Text(
                "Checkout",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(width: 20),
            const Text(
              "Total:",
              style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              "${total.toStringAsFixed(2)} \$",
              style: const TextStyle(
                color: Colors.blueAccent, 
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

