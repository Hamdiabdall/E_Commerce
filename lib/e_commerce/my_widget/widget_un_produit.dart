import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/e_commerce/provider/cart_provider.dart';

class ProduitItem extends StatelessWidget {
  final String id;
  final String nom;
  final String image;
  final double prix;
  final String description;
  final Function? onTap;

  const ProduitItem({
    Key? key,
    required this.id,
    required this.nom,
    required this.image,
    required this.prix,
    required this.description,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);
    
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/detailproduit', arguments: ProduitItem(
          id: id,
          nom: nom,
          image: image,
          prix: prix,
          description: description
        ));
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image du produit
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.network(
                image,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            
            // Information du produit
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nom,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${prix.toStringAsFixed(2)} \$',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[700],
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            
            // Bouton Ajouter au panier
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Ajouter le produit au panier
                  cartProvider.ajouterProduit(
                    id,
                    prix,
                    nom,
                    description,
                    image
                  );
                  
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('$nom ajouté au panier'),
                      duration: const Duration(seconds: 1),
                      action: SnackBarAction(
                        label: 'Voir panier',
                        onPressed: () {
                          Navigator.pushNamed(context, '/cart');
                        },
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minimumSize: const Size(double.infinity, 36),
                ),
                child: const Text(
                  'Ajouter au panier',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
