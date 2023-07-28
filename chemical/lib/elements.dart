import 'dart:io';
import 'package:chemical/element.dart';
import 'package:csv/csv.dart';

class Elements {
  Map<String, dynamic> allValues = {};

  loadFile () {
    final fileContent = File('elements.csv').readAsStringSync();
    final csvFile = CsvCodec().decoder.convert(fileContent);
    csvFile.remove(csvFile[0]);

    for (final itens in csvFile) {
      final symbol = itens[1];
      final name = itens[2];
      final nameLatin = itens[3];
      final weight = itens[0];
      final element = Element (
        symbol, 
        name, 
        nameLatin, 
        weight
      );
      allValues['informations'] = element;
    }
  }
}