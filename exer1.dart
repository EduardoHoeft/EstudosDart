//1.Faça um algoritmo que receba um nome, mas caso o nome não seja informado, exiba "Convidado".

//este importe serve para lidar com a entrada e saída de dados.
import 'dart:io';

void main() {
  print("Digite seu nome:");
  String? nome = stdin.readLineSync();

  if (nome == null || nome.isEmpty) {
    print('Convidado!');
  } else {
    print('Meu nome é ${nome}');
  }
}
