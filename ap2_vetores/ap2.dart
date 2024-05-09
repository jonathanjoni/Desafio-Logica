import 'dart:io';
import 'dart:math';
import 'mensagem.dart';

class PreencheVetorUsuario {
  int tamanhoVetor = 0;
  List<int> vetor1 = [];
  final ramdom = Random();
  Mensagem mensagem = Mensagem();

  void geraVetorEscolhidoPeloUsuario() {
    tamanhoVetor = mensagem.solicitaDados();

    for (int i = 0; i < tamanhoVetor; i++) {
      print("Digite o elemento que deseja adicionar ao vetor ${i + 1}");
      final elemento = int.parse(stdin.readLineSync()!);

      vetor1.add(elemento);
    }

    mensagem.geraMensagem(tamanhoVetor, vetor1);
  }
}
