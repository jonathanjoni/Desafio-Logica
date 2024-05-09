import 'dart:io';
import 'dart:math';

class CalculadoraTriangulo {
  double lado1 = 0;
  double lado2 = 0;

  void solicitaLados() {
    print("Digite o valor do primeiro lado do triangulo:");
    lado1 = double.parse(stdin.readLineSync()!);

    print("Digite o valor do segundo lado do triangulo:");
    lado2 = double.parse(stdin.readLineSync()!);
  }

  void calculaTriangulo() {
    solicitaLados();

    final hipotenusa = calculo(lado1, lado2);

    mensagemFinal(hipotenusa);
  }

  void mensagemFinal(double hipotenusa) {
    print("O maior lado do triângulo é: ${hipotenusa.toStringAsFixed(2)}");
  }

  double calculo(double lado1, lado2) {
    final lado1Quadrado = lado1 * lado1;
    final lado2Quadrado = lado2 * lado2;

    final hipotenusa = sqrt(lado1Quadrado + lado2Quadrado);
    return hipotenusa;
  }
}
