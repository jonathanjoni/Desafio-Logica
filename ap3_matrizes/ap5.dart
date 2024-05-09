import 'dart:io';
import 'ap1.dart';
import 'ap2.dart';
import 'ap3.dart';
import 'ap4.dart';

void main() {
  Menu().exibirMenu();
}

class Menu {
  void exibirMenu() {
    print("   --- Menu ---   ");
    print(" ");
    print("1.Criar Matriz");
    print("2.Dimensões da Matriz");
    print("3.Multiplica Matriz Por um Numero Real");
    print("4.Multiplicação Entre Matrizes");
    print(" ");
    print(" --------------------------    ");
    final opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        GeradorMatriz().gerarMatriz();
      case 2:
        PreencheMatrizUsuario().criarMatriz();
      case 3:
        MultiplicaMatrizPorNumeroReal().multiplicarMatriz();
      case 4:
        MultiplicadorMatriz().multiplicarMatrizes();
        break;
      default:
        print("Opção inválida!");
    }
  }
}
