//3.Faça um algoritmo que receba um texto e exiba a quantidade de caracteres, sem gerar erro caso o texto não seja informado.

import 'dart:io';

void main() {
  print('Digite um texto:');
  String? texto = stdin.readLineSync();

  if (texto == null || texto.isEmpty) {
    print('texto não encontrado!');
  } else {
    int contCaracter = texto.length;
    print('O número de caracteres: ${contCaracter}');
  }
}
