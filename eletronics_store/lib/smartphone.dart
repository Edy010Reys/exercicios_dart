import 'package:eletronics_store/product.dart';

class Smartphone extends Product {
  final String brand;

  Smartphone (
    super.code, 
    super.name, 
    super.price, 
    this.brand);

  @override
  Category get category => Category.smartphone;
}