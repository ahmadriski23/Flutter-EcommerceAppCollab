class Product {
  String? title;
  int? price;
  String? image;
  String? brand;

  Product({
    this.title,
    this.price,
    this.image,
    this.brand,
  });

  Product copyWith({
    String? title,
    int? price,
    String? image,
    String? brand,
  }) =>
      Product(
        title: title ?? this.title,
        price: price ?? this.price,
        image: image ?? this.image,
        brand: brand ?? this.brand,
      );

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        title: json["title"],
        price: json["price"],
        image: json["image"],
        brand: json["brand"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "price": price,
        "image": image,
        "brand": brand,
      };
}
