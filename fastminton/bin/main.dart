import 'package:fastminton/fastminton.dart';
import 'dart:io';

void main() {
  //Dentro do comando File coloque o caminho do diretório do arquivo.txt (Dentre as aspas)
  final contentFile = File('').readAsStringSync().split('\n');

  for (final sequence in contentFile) {
    final value = fastminton(sequence);
    if (value == null) {
      continue;
    }
    print(value);
  }
}