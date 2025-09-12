//2.Faça um algoritmo que receba um valor de desconto(double)e, caso não seja informado, considere o valor como 0.0.

import 'dart:io';

void main() {
  print("Digite o valor do desconto:");
  String? val = stdin.readLineSync();

  if (val != null) {
    double? valDesc = double.tryParse(val);

    if (valDesc != null) {
      print("O valor do desconto é ${valDesc}");
    } else {
      valDesc = 0.0;
      print(valDesc);
    }
  }
}
