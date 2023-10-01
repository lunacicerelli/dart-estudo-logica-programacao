import 'dart:math';

class Pizza {
  String? nome;
  int? tamanho;
  double? valor;

  double calcularMenorCustoPorArea() {
    const double pi = 3.1415;
    double areadaPizza = pi * pow((tamanho! / 2), 2);
    double custoPorArea = valor! / areadaPizza;

    return custoPorArea;
  }
}
