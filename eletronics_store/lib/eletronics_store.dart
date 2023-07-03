import 'dart:convert';
import 'package:eletronics_store/headphones.dart';
import 'package:eletronics_store/laptop.dart';
import 'package:eletronics_store/product.dart';
import 'dart:io';

import 'package:eletronics_store/smartphone.dart';

class ElectronicsStore {
  final List<Product> allProducts = [];
  
  loadProducts(String fileName) {
    final fileContent = File(fileName).readAsStringSync();
    final jsonFile = jsonDecode(fileContent);

    if (jsonFile is! List) {
      throw Exception('Formato do arquivo inválido');
    }

    for (final product in jsonFile) {
      final code = product['code'];
      final name = product['name'];
      final price = product['price'];
      final category = product['category'];
      final brand = product['brand'];
      final processor = product['processor'];
      final wireless = product['wireless'];

      if (category == 0) {
        addProduct(Smartphone(code, name, price, brand));
      } else if (category == 1) {
        addProduct(Laptop(code, name, price, processor));
      } else if (category == 2) {
        addProduct(Headphones(code, name, price, wireless));
      } else {
        throw Exception('Produto informado inválido');
      }
    }
  }

  addProduct(Product add) {
    allProducts.add(add);
  }


  listProducts() {
    List<Map> allValues = [];

    for (final product in allProducts) {
      Map<String, dynamic> values = {};
      
      values['Code'] = product.code;
      values['Name'] = product.name;
      values['Price'] = product.price;
      values['Category'] = product.category;

      allValues.add(values);
    }
    
    for (final value in allValues) {
      for (final item in value.entries) {
        print('${item.key}: ${item.value}');
      }
      print('-' * 36);
    }
  }

  totalPrice() {
    num price = 0;

    for (final product in allProducts) {
      price += product.price;
    }
    return price;
  }
}