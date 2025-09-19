// 6.Faça um algoritmo que receba um valor que pode ser texto ou outro tipo. Caso seja texto, mostre seu tamanho; caso contrário, exiba "Tipo inválido".

import 'dart:io';

void tipoObject(Object valor) {
  if (valor is String) {
    print("O texto tem: ${valor.length} caracteres.");
  } else {
    print("Tipo Inválido");
  }
}

void main() {
  print("Entrada..:");
  String? inputUser = stdin.readLineSync();

  if (inputUser != null && inputUser.isNotEmpty) {
    tipoObject(inputUser);
  } else {
    print("Nenhuma entrada fornecida");
  }
}
