import 'package:flutter/material.dart';
import 'package:flutter_app/model/class_produit.dart';

class ListeProduitsScreen extends StatefulWidget {
  const ListeProduitsScreen({super.key});

  @override
  State<ListeProduitsScreen> createState() => _ListeProduitsScreenState();
}

class _ListeProduitsScreenState extends State<ListeProduitsScreen> {
  final List<ClassProduit> produits = [
    ClassProduit(
      id: "1",
      title: "Samsung Galaxy S9",
      description:
          "SAMSUNG Galaxy S9+ Plus G965U 64GB Refurbished – Elegant Lilac Purple, Fully Unlocked with LCD Shadow (Certified Renewed) \nItem Number: 52043695",
      price: 477,
      imageUrl:
          "https://i5.walmartimages.com/seo/Pre-Owned-SAMSUNG-Galaxy-S9-Plus-G965U-64GB-Lilac-Purple-Fully-Unlocked-LCD-Shadow-Refurbished-Good_7c3ded75-02d6-4253-87c1-0da13687d63c.38550e53684313e6ee13d13b3abb2064.jpeg",
      brand: "Samsung",
      produitCategoryName: "Smartphones",
      quantity: 5,
      isFavorite: false,
    ),
    ClassProduit(
      id: "2",
      title: "Samsung Galaxy S21 Ultra",
      description:
          "Samsung Galaxy S21 Ultra 5G - 256GB, 12GB RAM, Factory Unlocked - Phantom Silver \nThe Samsung Galaxy S21 Ultra 5G offers 256GB of storage and 12GB of RAM for optimal performance. Factory unlocked, it is compatible with all carriers and features an elegant Phantom Silver design.",
      price: 1199.99,
      imageUrl:
          "https://m.media-amazon.com/images/I/81J0QOSKU-L._AC_SL1500_.jpg",
      brand: "Samsung",
      produitCategoryName: "Smartphones",
      quantity: 6,
      isFavorite: false,
    ),
    ClassProduit(
      id: "3",
      title: "Samsung Galaxy S22",
      description:
          "SAMSUNG Galaxy S22 Ultra S9080 5G 256GB 12GB RAM Factory Unlocked - Phantom Black \nThe SAMSUNG Galaxy S22 Ultra S9080 5G comes with 256GB of storage and 12GB of RAM, ensuring top-tier performance. Factory unlocked, it is compatible with all carriers and features a sleek Phantom Black design.",
      price: 4580,
      imageUrl:
          "https://down-th.img.susercontent.com/file/th-11134207-7r98r-ls5g64xlfbla67.webp",
      brand: "Samsung",
      produitCategoryName: "Smartphones",
      quantity: 8,
      isFavorite: false,
    ),
    ClassProduit(
      id: "4",
      title: "Samsung Galaxy Z Flip 4",
      description:
          "Samsung Galaxy Z Flip4 5G 128GB 8GB RAM Factory Unlocked (GSM Only | Not Compatible with CDMA - Verizon / Sprint) - Black \nThe Samsung Galaxy Z Flip4 5G comes with 128GB of storage and 8GB of RAM for smooth performance. Factory unlocked, it is compatible with GSM carriers but not with CDMA networks like Verizon and Sprint, featuring a stylish black design.",
      price: 999.99,
      imageUrl:
          "https://m.media-amazon.com/images/I/71gxR5zhxkL._AC_SL1500_.jpg",
      brand: "Samsung",
      produitCategoryName: "Smartphones",
      quantity: 4,
      isFavorite: false,
    ),
    ClassProduit(
      id: "5",
      title: "Samsung Galaxy Z Fold 4",
      description:
          "Samsung Galaxy Z Fold 4 5G F936U 256GB Factory Unlocked - Phantom Black Smartphone \nThe Samsung Galaxy Z Fold 4 5G offers 256GB of storage with a powerful foldable design, providing a unique and versatile smartphone experience. Factory unlocked, it is compatible with all carriers and features an elegant Phantom Black finish.",
      price: 1799.99,
      imageUrl:
          "https://i5.walmartimages.com/seo/Samsung-Galaxy-Z-Fold-4-5G-F936U-256GB-Factory-Unlocked-Phantom-Black-Android-Smartphone-Brand-New_bd546d21-64e1-4dac-9875-03841cdee6d7.d3769e6ebb85493aa822a84077902b86.jpeg",
      brand: "Samsung",
      produitCategoryName: "Smartphones",
      quantity: 3,
      isFavorite: false,
    ),
    ClassProduit(
      id: "6",
      title: "Samsung Galaxy A53",
      description:
          "SAMSUNG GALAXY A53 5G Light Blue (8GB + 256GB) \nThe SAMSUNG GALAXY A53 5G comes with 8GB of RAM and 256GB of storage, offering excellent performance and ample space. Its Light Blue color adds a fresh, stylish look to this feature-packed smartphone.",
      price: 2099.50,
      imageUrl:
          "https://m.media-amazon.com/images/I/81h8d7X-KLL._AC_SL1500_.jpg",
      brand: "Samsung",
      produitCategoryName: "Smartphones",
      quantity: 10,
      isFavorite: false,
    ),
    ClassProduit(
      id: "7",
      title: "Samsung Galaxy A73",
      description:
          "Samsung Galaxy A73 5G 8GB/128GB - Green \nThe Samsung Galaxy A73 5G features 8GB of RAM and 128GB of storage, delivering solid performance. Its sleek Green design makes it a stylish and reliable choice for everyday use.",
      price: 2299.99,
      imageUrl:
          "https://cdn.lesnumeriques.com/optim/product/68/68009/754b3ea9-galaxy-a73__450_400.webp",
      brand: "Samsung",
      produitCategoryName: "Smartphones",
      quantity: 7,
      isFavorite: false,
    ),
    ClassProduit(
      id: "8",
      title: "Samsung Galaxy S23 Ultra",
      description:
          "Samsung Galaxy S23 Ultra 512GB, 12GB RAM, Green.Galaxy S23 Ultra (Dual SIM) 256GB - White (Refurbished) \nThe Galaxy S23 Ultra with Dual SIM capability offers 256GB of storage, delivering high performance and versatility. This refurbished model in white combines excellent functionality with a premium design at a great value.",
      price: 1399.99,
      imageUrl: "https://m.media-amazon.com/images/I/518-9ZaLFML.jpg",
      brand: "Samsung",
      produitCategoryName: "Smartphones",
      quantity: 5,
      isFavorite: false,
    ),
    ClassProduit(
      id: "9",
      title: "Samsung Galaxy S21 FE",
      description:
          "Samsung Galaxy S21 FE 5G Smartphone - 8GB RAM, 256GB Storage - Violet \nThe Samsung Galaxy S21 FE 5G features 8GB of RAM and 256GB of storage, offering excellent performance and ample space. Its vibrant Violet design adds a touch of style and elegance to this high-performance 5G smartphone.",
      price: 3199,
      imageUrl:
          "https://m.media-amazon.com/images/I/61MzJvPxNgL._AC_SL1000_.jpg",
      brand: "Samsung",
      produitCategoryName: "Smartphones",
      quantity: 12,
      isFavorite: false,
    ),
    ClassProduit(
      id: "10",
      title: "Samsung Galaxy Note 20 Ultra",
      description:
          "SAMSUNG Galaxy Note 20 Ultra 128GB - Bronze, Unlocked \nThe SAMSUNG Galaxy Note 20 Ultra offers 128GB of storage and is unlocked for use with any carrier. Its sleek Bronze design and powerful features make it a premium choice for users seeking top-tier performance",
      price: 3050.20,
      imageUrl:
          "https://i5.walmartimages.com/seo/SAMSUNG-Galaxy-Note-20-Ultra-128GB-Bronze-Unlocked_1b917439-0081-470f-a3f2-083deb53a77c.70bf503010d705a9398c54f2dad10c15.jpeg",
      brand: "Samsung",
      produitCategoryName: "Smartphones",
      quantity: 6,
      isFavorite: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Liste des Produits")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: produits.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            final produit = produits[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/detailproduit',
                  arguments: produit,
                );
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(10)),
                        child: Image.network(
                          produit.imageUrl,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        produit.title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "\TND ${produit.price.toStringAsFixed(2)}",
                        style: const TextStyle(color: Colors.red, fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}