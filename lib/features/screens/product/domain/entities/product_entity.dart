class ProductEntity {
  final int id;
  final String image;
  final String name;
  final String price;
  final String? priceDiscount;
  final String description;
  final int stock;
  ProductEntity({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.priceDiscount,
    required this.description,
    required this.stock,
  });
}
