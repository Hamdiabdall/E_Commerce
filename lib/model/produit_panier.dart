class ProduitPanier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  int quantite;

  ProduitPanier({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.quantite,
  });

  @override
  String toString() {
    return 'ProduitPanier(id: $id, title: $title, price: $price, imageUrl: $imageUrl, quantite: $quantite)';
  }
}