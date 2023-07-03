enum Category {
  smartphone,
  laptop,
  headphones
}

abstract class Product {
  final String code;
  final String name;
  final double price;

  Product (
    this.code,
    this.name, 
    this.price
  );

  Category get category;
}