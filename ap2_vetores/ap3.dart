import 'dart:io';
import 'dart:math';
import 'mensagem.dart';

class SomaVetores {
  int tamanhoVetor = 0;
  List<int> vetor1 = [];
  final ramdom = Random();
  Mensagem mensagem = Mensagem();

  void somaDeVetores() {
    tamanhoVetor = mensagem.solicitaDados();

    for (int i = 0; i < tamanhoVetor; i++) {
      print("Digite o elemento que deseja adicionar ao vetor ${i + 1}");
      final elemento = int.parse(stdin.readLineSync()!);

      vetor1.add(elemento);
    }

    List<int> vetor2 = List.generate(tamanhoVetor, (_) => ramdom.nextInt(100));

    List<int> vetor3 = [];

    for (int i = 0; i < tamanhoVetor; i++) {
      int soma = vetor1[i] + vetor2[i];
      vetor3.add(soma);
    }

    print(
        "Seu Vetor1: ${vetor1}. Gerado aleatoriamente - Vetor2 : ${vetor2}. Soma de seu Vetor1 + Vetor2 - Vetor3  ${vetor3} ");
  }
}
