/*7. Crie um algoritmo que solicite ao usuário dois números e qual a operação que ele
deseja executar, soma(+), subtração(-), multiplicação(*) e divisão(/).
Além da função main deverá existir as seguintes funções:
a) executar - recebe os valores e operação informados pelo usuário, chama a
respectiva função e mostra o resultado.
b) somar
c) subtrair
d) multiplicar
e) dividir
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

executar(double valor1, double valor2, String operacao){
  double resultado;
  switch(operacao){
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

double somar(double valor1, double valor2){
  return valor1 + valor2;
}

double subtrair(double valor1, double valor2){
  return valor1 - valor2;
}

double multiplicar(double valor1, double valor2){
  return valor1 * valor2;
}

double dividir(double valor1, double valor2){
  return valor1 / valor2;
}