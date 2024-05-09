import 'dart:io';

class Mensagem {
  void geraMensagem(int tamanhoVetor, List<int> vetor) {
    print(
        "Seu vetor com o tamanho de: ${tamanhoVetor}. Com os valores ${vetor.join(", ")} ");
  }

  int solicitaDados() {
    print("Digite o tamanho do vetor desejado");
    return int.parse(stdin.readLineSync()!);
  }
}
