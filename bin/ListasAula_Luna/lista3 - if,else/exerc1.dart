/*1. O custo de um carro novo ao consumidor é a soma do custo de fábrica com a
porcentagem do distribuidor e dos impostos (aplicados ao custo de fábrica).
Supondo que o percentual do distribuidor seja de 28% e os impostos de 45%,
escrever um algoritmo para ler o custo de fábrica de um carro, calcular e escrever o
custo final ao consumidor.
*/

/*exemplo de 20%
para saber a % de um número, multiplica o número por 0.20
para somar a % ao número, multiplica por 1.2


double umPorcento = custoFabrica / 100; - valor divido por 100 = 1%
double dezPorcento = umPorcento * 10; - multiplicar por 10 para ter o valor de 10%



double custoFabrica / 100 * 10;
valor divido por 100 = 1% ... multiplicar por 10 para ter o valor de 10%
*/

import 'dart:io';

void main() {
  int distribuidorPercentual = 28;
  int impostoPercentual = 45;
  double custoFabrica;

  print('Escreva o valor de fábrica:');
  custoFabrica = double.parse(stdin.readLineSync()!);

  double valorDistribuidor = custoFabrica / 100 * distribuidorPercentual; //poderia ser: custoFabrica * 0.28 - (28%);
  double valorImposto = custoFabrica / 100 * impostoPercentual;

  double custoFinal = custoFabrica + valorDistribuidor + valorImposto;

  print('O custo final é: $custoFinal');


}