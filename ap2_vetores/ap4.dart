import 'dart:io';
import 'ap1.dart';
import 'ap2.dart';
import 'ap3.dart';

void main() {
  Menu().exibirMenu();
}

class Menu {
  void exibirMenu() {
    print("   --- Menu ---   ");
    print(" ");
    print("1.Vetor de numeros aleatorios");
    print("2.Prencher um vetor");
    print("3.Soma de Vetores");
    print(" ");
    print(" --------------------------    ");
    final opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        GeradorVetorAleatorio().geraVetorDeNumerosAleatorios();
      case 2:
        PreencheVetorUsuario().geraVetorEscolhidoPeloUsuario();
      case 3:
        SomaVetores().somaDeVetores();
        break;
      default:
        print("Opção inválida");
    }
  }
}
