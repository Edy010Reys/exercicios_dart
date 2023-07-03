import 'package:eletronics_store/product.dart';

class Headphones extends Product {
  final bool wireless;

  Headphones (
    super.code, 
    super.name, 
    super.price, 
    this.wireless);

  @override
  Category get category => Category.headphones;
}