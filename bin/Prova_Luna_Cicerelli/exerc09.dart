/*9. (peso 1,5) Crie uma função que receba dois números double e uma string com o
tipo da operação (+ - / *). Efetue o cálculo dos dois números de acordo com o tipo de
operação e retorne o resultado. Na função main crie um algoritmo que solicite os
dois valores e o tipo de operação, utilize a função para realizar o cálculo e exiba o
resultado de retorno.
*/

import 'dart:io';

void main() {
  print('Informe o numero 1:');
  double valor1 = double.parse(stdin.readLineSync()!);

  print('Informe o numero 2:');
  double valor2 = double.parse(stdin.readLineSync()!);

  print('Informe a operação:');
  String operacao = stdin.readLineSync()!;

  executar(valor1, valor2, operacao);
}

executar(double valor1, double valor2, String operacao) {
  double resultado;
  switch (operacao) {
    case '+':
      resultado = somar(valor1, valor2);
      break;
    case '-':
      resultado = subtrair(valor1, valor2);
      break;
    case '*':
      resultado = multiplicar(valor1, valor2);
      break;
    case '/':
      resultado = dividir(valor1, valor2);
      break;
    default:
      print('Operação inválida!');
      return;
  }
  print('Resutlado = $resultado');
}

double somar(double valor1, double valor2) {
  return valor1 + valor2;
}

double subtrair(double valor1, double valor2) {
  return valor1 - valor2;
}

double multiplicar(double valor1, double valor2) {
  return valor1 * valor2;
}

double dividir(double valor1, double valor2) {
  return valor1 / valor2;
}
