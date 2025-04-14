import 'package:flutter/material.dart';
import 'package:flutter_app/model/produit_panier.dart';

class CartProvider with ChangeNotifier {
  final List<ProduitPanier> _panier = [];
  
  List<ProduitPanier> get panier => _panier;

  double get totalAmount {
    return _panier.fold(0.0, (sum, item) => sum + (item.price * item.quantite));
  }

  int get itemCount {
    return _panier.fold(0, (sum, item) => sum + item.quantite);
  }

  void ajouterProduit(String productId, double price, String title,
      String description, String imageUrl) {
    try {
      final existingCartItemIndex = _panier.indexWhere((item) => item.id == productId);
      
      if (existingCartItemIndex >= 0) {
        _panier[existingCartItemIndex].quantite += 1;
      } else {
        _panier.add(
          ProduitPanier(
            id: productId,
            title: title,
            description: description,
            price: price,
            imageUrl: imageUrl,
            quantite: 1,
          ),
        );
      }
      notifyListeners();
    } catch (error) {
      debugPrint('Error adding product to cart: $error');
      rethrow;
    }
  }

  void removeItem(String productId) {
    _panier.removeWhere((item) => item.id == productId);
    notifyListeners();
  }

  void decrementQuantity(String productId) {
    final existingCartItemIndex = _panier.indexWhere((item) => item.id == productId);
    
    if (existingCartItemIndex >= 0) {
      if (_panier[existingCartItemIndex].quantite > 1) {
        _panier[existingCartItemIndex].quantite -= 1;
      } else {
        _panier.removeAt(existingCartItemIndex);
      }
      notifyListeners();
    }
  }

  void clear() {
    _panier.clear();
    notifyListeners();
  }
}