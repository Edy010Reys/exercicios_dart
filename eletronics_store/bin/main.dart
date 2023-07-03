import 'package:eletronics_store/eletronics_store.dart';

void main() {
  final store = ElectronicsStore();
  store.loadProducts('data/products.json');
  print('#### LISTA DE PRODUTOS\n');
  store.listProducts();
  print('Preço Total: ${store.totalPrice().toStringAsFixed(2)}');
}