/*9.Faça um algoritmo que receba um nome e o exiba em letras maiúsculas, apenas se ele for informado. */

import 'dart:io';

void main() {
  print("Digite seu nome:");
  String? nome = stdin.readLineSync();

  if (nome != null && nome.isNotEmpty) {
    print('${nome.toUpperCase()}');
  } else {
    print('Nenhum nome informado!');
  }
}
