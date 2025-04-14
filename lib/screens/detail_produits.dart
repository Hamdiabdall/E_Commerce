import 'package:flutter/material.dart';
import 'package:flutter_app/model/class_produit.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/e_commerce/provider/cart_provider.dart';

class ProduitDetailScreen extends StatefulWidget {
  const ProduitDetailScreen({super.key});
  @override
  State<ProduitDetailScreen> createState() => _ProduitDetailScreenState();
}

class _ProduitDetailScreenState extends State<ProduitDetailScreen> {
  late ClassProduit p;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      p = ModalRoute.of(context)!.settings.arguments as ClassProduit;
      setState(() {});
    });
  }
  

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(p.title),
      ),
      body: Stack(
        children: [
          Container(
            foregroundDecoration: const BoxDecoration(color: Colors.black12),
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            child: Image.network(p.imageUrl),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(top: 16, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 250.0,
                ),
                     Container(
                  color: Colors.grey[300],
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          p.description,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        p.price.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Description',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Divider(),
                      infoProduct("Brand", p.brand),
                      infoProduct("Quantity",p.quantity.toString()),
                      infoProduct("Category", p.produitCategoryName),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: const Column(
                    children: [
                      Text(
                        "Aucun Review",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 21),
                      ),
                      Text(
                        "Be the first to revview ...",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                //bouton en bas
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add product to cart
                          cartProvider.ajouterProduit(
                            p.id,
                            p.price,
                            p.title,
                            p.description,
                            p.imageUrl,
                          );
                          
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: const Text('Added to cart'),
                              action: SnackBarAction(
                                label: 'View Cart',
                                onPressed: () {
                                  Navigator.pushNamed(context, '/cart');
                                },
                              ),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          foregroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero),
                        ),
                        child: const Text("Add to Cart"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: const Text('Proceeding to checkout'),
                              action: SnackBarAction(
                                label: 'OK',
                                onPressed: () {
                                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                },
                              ),
                            ),
                          );
                        },
                        label: const Text("Buy Now"),
                        icon: const Icon(Icons.credit_card),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            p.isFavorite = !p.isFavorite;
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(p.isFavorite ? 'Added to favorites' : 'Removed from favorites')),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero),
                        ),
                        child: Icon(Icons.favorite),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget infoProduct(String name, String value) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          Text(
            "$name:",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            value,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}