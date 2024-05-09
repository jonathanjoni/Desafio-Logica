import 'dart:io';

class ConversorDecimal {
  int numeroDecimal = 0;

  void solicitaDados() {
    print("Digite um número decimal:");
    numeroDecimal = int.parse(stdin.readLineSync()!);
  }

  void converteDecimal() {
    solicitaDados();
    print("Decimal: $numeroDecimal");
    print("Binário: ${numeroDecimal.toRadixString(2)}");
    print("Octal: ${numeroDecimal.toRadixString(8)}");
    print("Hexadecimal: ${numeroDecimal.toRadixString(16)}");
  }
}
