import 'dart:io';

void main() {
  print('digite o primeiro numero:');
  int dado1 = int.parse(stdin.readLineSync()!);
  print('digite o segundo numero:');
  int dado2 = int.parse(stdin.readLineSync()!);

  imprimeSoma(dado1, dado2);

  int xxxx = calculaEretornaSoma(dado1, dado2);
  print('A soma é $xxxx');
}

void imprimeSoma(int num1, int num2) {
  int soma = num1 + num2;
  print('A soma é $soma');
}

int calculaEretornaSoma(int valor1, int valor2) {
  int soma = valor1 + valor2;
  return soma;
}
