import 'dart:io';
import 'dart:math';

class MultiplicaMatrizPorNumeroReal {
  void multiplicarMatriz() {
    print("Digite o tamanho da matriz que deseja criar");
    final tamanhoMatriz = int.parse(stdin.readLineSync()!);

    final matriz = List.generate(tamanhoMatriz,
        (_) => List.generate(tamanhoMatriz, (_) => Random().nextInt(100)));

    print("Digite um número real para multiplicar com sua matriz");
    final numeroReal = int.parse(stdin.readLineSync()!);

    final matrizMultiplicada = matriz.map((linha) {
      return linha.map((elemento) => (elemento * numeroReal).toInt()).toList();
    }).toList();

    print("Sua matriz:");
    for (var linha in matriz) {
      String linhaFormatada = "|";
      for (var valorCelula in linha) {
        linhaFormatada += " $valorCelula |";
      }
      print(linhaFormatada);
    }
    print(" ");
    print("Matriz multiplicada por: $numeroReal");
    for (var linha in matrizMultiplicada) {
      String linhaFormatada = "|";
      for (var valorCelula in linha) {
        linhaFormatada += " $valorCelula |";
      }
      print(linhaFormatada);
    }
  }
}
