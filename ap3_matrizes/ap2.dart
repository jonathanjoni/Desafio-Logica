import 'dart:io';

class PreencheMatrizUsuario {
  void criarMatriz() {
    print("Digite o tamanho da matriz que deseja criar");
    final tamanhoMatriz = int.parse(stdin.readLineSync()!);

    final matrizGerada =
        List.generate(tamanhoMatriz, (_) => List.filled(tamanhoMatriz, 0));

    print("Sua matriz $tamanhoMatriz x $tamanhoMatriz");
    print(" ");

    for (var indiceLinha = 0; indiceLinha < tamanhoMatriz; indiceLinha++) {
      String linha = "| ";

      for (var indiceColuna = 0; indiceColuna < tamanhoMatriz; indiceColuna++) {
        linha += "   Linha ${indiceLinha + 1}, Coluna ${indiceColuna + 1}   |";
      }
      print("");
      print(linha);
      print("");

      linha = "| ";
      for (var indiceColuna = 0; indiceColuna < tamanhoMatriz; indiceColuna++) {
        print(
            "Digite o valor que deseja adicionar a linha ${indiceLinha + 1}, coluna ${indiceColuna + 1}: ");
        final valorCelula = int.parse(stdin.readLineSync()!);
        matrizGerada[indiceLinha][indiceColuna] = valorCelula;
        linha += "      $valorCelula         | ";
      }
      print("");
      print(linha);
      print("");
    }

    print("Matriz Preenchida:");
    for (var linha in matrizGerada) {
      String linhaFormatada = "|";
      for (var valorCelula in linha) {
        linhaFormatada += " $valorCelula |";
      }
      print(linhaFormatada);
    }
  }
}
