import 'dart:io';
import 'dart:math';

class MultiplicadorMatriz {
  void multiplicarMatrizes() {
    print("Digite o tamanho da primeira matriz que deseja criar");
    final tamanhoMatriz1 = int.parse(stdin.readLineSync()!);
    final matriz1 = List.generate(tamanhoMatriz1,
        (_) => List.generate(tamanhoMatriz1, (_) => Random().nextInt(100)));

    print("Digite o tamanho da segunda matriz que deseja criar");
    final tamanhoMatriz2 = int.parse(stdin.readLineSync()!);
    final matriz2 = List.generate(tamanhoMatriz2,
        (_) => List.generate(tamanhoMatriz2, (_) => Random().nextInt(100)));

    if (matriz1.length != matriz2.length ||
        matriz1[0].length != matriz2[0].length) {
      print("Erro: As matrizes informadas têm tamanhos diferentes.");
      return;
    }

    final matrizMultiplicada = List.generate(matriz1.length, (i) {
      return List.generate(matriz2[0].length, (j) {
        num soma = 0;
        for (var k = 0; k < matriz1[0].length; k++) {
          soma += matriz1[i][k] * matriz2[k][j];
        }
        return soma;
      });
    });

    print("Sua primeira matriz:");
    for (var linha in matriz1) {
      String linhaFormatada = "|";
      for (var valorCelula in linha) {
        linhaFormatada += " $valorCelula |";
      }
      print(linhaFormatada);
    }
    print(" ");
    print("Sua segunda matriz:");
    for (var linha in matriz2) {
      String linhaFormatada = "|";
      for (var valorCelula in linha) {
        linhaFormatada += " $valorCelula |";
      }
      print(linhaFormatada);
    }
    print(" ");
    print("Resultado da multiplicação matriz1 * matriz2:");
    for (var linha in matrizMultiplicada) {
      String linhaFormatada = "|";
      for (var valorCelula in linha) {
        linhaFormatada += " $valorCelula |";
      }
      print(linhaFormatada);
    }
  }
}
