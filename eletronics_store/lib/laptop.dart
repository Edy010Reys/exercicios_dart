import 'package:eletronics_store/product.dart';

class Laptop extends Product {
  final String processor;

  Laptop (
    super.code, 
    super.name, 
    super.price, 
    this.processor);

  @override
  Category get category => Category.laptop;
}