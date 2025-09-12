//4.Faça um algoritmo que receba um valor e verifique se ele é do tipo inteiro. Caso seja, exiba "inteiro", senão, exiba "Não é inteiro".

import 'dart:io';

void main() {
  print('Digite um valor inteiro:');
  String? valString = stdin.readLineSync();

  if (valString != null) {
    int? val = int.tryParse(valString);

    //print(val);

    if (val is int) {
        print('inteiro');
    }else {
        print('Não é inteiro');
      }
  }
}
