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
    print("1. Calcular a dimensão do maior lado de um triangulo");
    print("2. Converter um número decimal em binário, octal e hexadecimal");
    print("3. Resolver formula bhaskara");
    print(" ");
    print(" --------------------------    ");

    final opcao = int.tryParse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        CalculadoraTriangulo().calculaTriangulo();
        break;
      case 2:
        ConversorDecimal().converteDecimal();
        break;
      case 3:
        CalculadoraBaskara().resolveBhaskara();
        break;
      default:
        print("Opção inválida.");
    }
  }
}
