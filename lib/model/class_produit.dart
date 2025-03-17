class ClassProduit {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final String brand;
  final String produitCategoryName;
  final int quantity;
  bool isFavorite;

  ClassProduit({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.brand,
    required this.produitCategoryName,
    required this.quantity,
    this.isFavorite = false,
  });
}
