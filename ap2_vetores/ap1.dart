import 'dart:math';
import 'mensagem.dart';

class GeradorVetorAleatorio {
  int tamanhoVetor = 0;
  List<int> vetor = [];
  final ramdom = Random();
  Mensagem mensagem = Mensagem();

  void geraVetorDeNumerosAleatorios() {
    tamanhoVetor = mensagem.solicitaDados();

    vetor = List.generate(tamanhoVetor, (_) => ramdom.nextInt(100));

    mensagem.geraMensagem(tamanhoVetor, vetor);
  }
}
