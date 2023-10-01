/*6. Crie um algoritmo que solicite 8 números ao usuário, em seguida informe a soma
dos números, qual o menor, qual o maior e a média.*/


import 'dart:io';

void main() {
  List<int> listaNumeros = [];

  for(int i = 1 ; i<= 8 ; i++){
    print('Informe o número $i');
    int valor = int.parse(stdin.readLineSync()!);
    listaNumeros.add(valor);
  }

  int soma = 0;
  int menorValor = listaNumeros[0];
  int maiorValor = listaNumeros[0];
  for(int i = 0 ; i < listaNumeros.length ; i++){
    int item = listaNumeros[i];
    soma += item;
    if(item < menorValor){
      menorValor = item;
    }
    if(item > maiorValor){
      maiorValor = item;
    }
  }
  double media = soma/listaNumeros.length;
  print('A soma é: $soma');
  print('O menor valor é: $menorValor');
  print('O maior valor é: $maiorValor');
  print('A média dos valores é: ${media.toStringAsFixed(2)}');
}