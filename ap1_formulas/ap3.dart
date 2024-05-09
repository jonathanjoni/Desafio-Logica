import 'dart:io';
import 'dart:math';

class CalculadoraBaskara {
  double coeficienteA = 0;
  double coeficienteB = 0;
  double coeficienteC = 0;

  void solicitaDados() {
    print("Digite o coeficiente 'a':");
    coeficienteA = double.parse(stdin.readLineSync()!);

    print("Digite o coeficiente 'b':");
    coeficienteB = double.parse(stdin.readLineSync()!);

    print("Digite o coeficiente 'c':");
    coeficienteC = double.parse(stdin.readLineSync()!);
  }

  void resolveBhaskara() {
    solicitaDados();

    final discriminante =
        calculaDiscriminante(coeficienteA, coeficienteB, coeficienteC);

    if (discriminante > 0) {
      final raiz1 = (-coeficienteB + sqrt(discriminante)) / (2 * coeficienteA);
      final raiz2 = (-coeficienteB - sqrt(discriminante)) / (2 * coeficienteA);

      print("As raízes são reais e distintas! raiz1 = $raiz1, raiz2 = $raiz2");
    } else if (discriminante == 0) {
      final raiz = -coeficienteB / (2 * coeficienteA);

      print("As raízes são reais e iguais: $raiz");
    } else {
      final parteReal = -coeficienteB / (2 * coeficienteA);
      final parteImaginaria = sqrt(-discriminante) / (2 * coeficienteA);

      print("As raízes são complexas:");
      print("Raiz 1: ${parteReal}r + ${parteImaginaria}i");
      print("Raiz 2: ${parteReal}r - ${parteImaginaria}i");
    }
  }

  double calculaDiscriminante(double a, b, c) {
    return b * b - 4 * a * c;
  }
}
