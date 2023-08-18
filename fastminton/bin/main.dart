import 'package:fastminton/fastminton.dart';
import 'dart:io';

void main() {
  final contentFile = File('C:/Users/edson/exercicios_dart/fastminton/input.txt').readAsStringSync().split('\n');
  for (final sequence in contentFile) {
    final value = fastminton(sequence);
    if (value == null) {
      continue;
    }
    print(value);
  }
}