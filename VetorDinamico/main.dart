// Arquivo: main.dart
import 'VetorDinamico.dart';

void main() {
  print('--- TESTANDO VETOR DE INTEIROS ---');

  // Testando o Construtor
  final vetorInt = VetorDinamico<int>();
  print('Vetor recém-criado: $vetorInt');
  print('Está vazio? ${vetorInt.estaVazio()}');
  print('Tamanho inicial: ${vetorInt.tamanho()}');
  print('Capacidade inicial: ${vetorInt.capacidade()}');

  print('\n--- Testando adicionar() e crescimento ---');
  vetorInt.adicionar(10);
  vetorInt.adicionar(20);
  vetorInt.adicionar(30);
  vetorInt.adicionar(40);
  print('Vetor após 4 adições: $vetorInt');
  print('Tamanho: ${vetorInt.tamanho()}');
  print('Capacidade: ${vetorInt.capacidade()}');

  // A próxima adição deve dobrar a capacidade!
  vetorInt.adicionar(50);
  print('Vetor após 5 adições: $vetorInt');
  print('Tamanho: ${vetorInt.tamanho()}');
  print('Capacidade (deve ter dobrado): ${vetorInt.capacidade()}');

  print('\n--- Testando acesso e modificação por índice ---');
  print('Elemento no índice 2: ${vetorInt[2]}');
  vetorInt[0] = 15;
  print('Vetor após modificar o índice 0: $vetorInt');

  print('\n--- Testando inserir() ---');
  // Inserir no início
  vetorInt.inserir(0, 5);
  print('Após inserir 5 no início: $vetorInt');
  print('Tamanho: ${vetorInt.tamanho()}');

  // Inserir no meio
  vetorInt.inserir(3, 25);
  print('Após inserir 25 no meio (índice 3): $vetorInt');

  print('\n--- Testando removerEm() ---');
  final removido = vetorInt.removerEm(1);
  print('Elemento removido do índice 1: $removido');
  print('Vetor após remover do índice 1: $vetorInt');
  print('Tamanho: ${vetorInt.tamanho()}');

  print('\n--- Testando busca/utilidades ---');
  print('O vetor contém 40? ${vetorInt.contem(40)}');
  print('O vetor contém 99? ${vetorInt.contem(99)}');
  print('Índice do elemento 50: ${vetorInt.indiceDe(50)}');

  print('\n--- Testando limpar() ---');
  vetorInt.limpar();
  print('Vetor após limpar: $vetorInt');
  print('Tamanho após limpar: ${vetorInt.tamanho()}');
  print('Capacidade mantida: ${vetorInt.capacidade()}');

  print('\n--- Testando tratamento de erro ---');
  try {
    vetorInt[0] = 100;
  } catch (e) {
    print('Erro capturado ao acessar índice inválido (esperado): $e');
  }

  print('\n\n--- TESTANDO VETOR DE STRINGS ---');
  final vetorStr = VetorDinamico<String>();
  vetorStr.adicionar('Dart');
  vetorStr.adicionar('é');
  vetorStr.adicionar('legal');
  print('Vetor de Strings: $vetorStr');
  vetorStr.inserir(1, 'é muito');
  vetorStr.removerEm(2);
  print('Vetor de Strings modificado: $vetorStr');
}
