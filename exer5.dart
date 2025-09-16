//5.Faça um algoritmo que receba um valor genérico contendo um texto e o converta para maiúsculo antes de exibir.

import 'dart:io';

void main() {
  print('digite um texto:');
  String? texto = stdin.readLineSync();

  if (texto?.isEmpty == false) {
    String? textoUpper = texto?.toUpperCase();
    print('$textoUpper');
  } else {
    print('Não foi inserido nenhum texto, por favor tente novamente.');
  }
}
