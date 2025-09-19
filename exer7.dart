// 7.Faça um algoritmo que receba dois números decimais e mostre a soma com duas casas decimais.

import 'dart:io';

void funcSoma(double n1, double n2) {
  double soma = n1 + n2;
  print("A soma é..: $soma");
}

void main() {
  print("Digite o 1 numero:");
  String? input1 = stdin.readLineSync();

  print("Digite o 2 numero:");
  String? input2 = stdin.readLineSync();

  if (input1 != null && input1.isNotEmpty && input2 != null && input2.isNotEmpty) {
    double? num1 = double.tryParse(input1);
    double? num2 = double.tryParse(input2);
    funcSoma(num1!, num2!);
  } else {
    print("Valor inválido!");
  }
}
