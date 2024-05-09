import 'dart:io';
import 'dart:math';

class GeradorMatriz {
  void gerarMatriz() {
    print("Digite o tamanho da matriz que deseja criar");
    final tamanhoMatriz = int.parse(stdin.readLineSync()!);
    final matrizGerada = List.generate(tamanhoMatriz,
        (_) => List.generate(tamanhoMatriz, (_) => Random().nextInt(100)));

    print(
        "Foi gerada sua matriz $tamanhoMatriz x $tamanhoMatriz com números aleatórios");
    print(" ");

    imprimirMatriz(matrizGerada);
  }

  void imprimirMatriz(List<List<int>> matriz) {
    for (var linha in matriz) {
      String linhaFormatada = "|";
      for (var valorCelula in linha) {
        linhaFormatada += " $valorCelula |";
      }
      print(linhaFormatada);
    }
  }
}
