/*2. Em uma quitanda uma maçã custa R$ 1,30 a unidade, porém o valor muda se for
comprado uma quantidade maior:
- acima de 5 maças R$ 1,15 por unidade;
- acima de 15 maças R$ 1,05 por unidade;
- acima de 30 maças R$ 0,98 por unidade.
Escreva um algoritmo que solicite a quantidade de maçãs desejadas, informe o valor
total da compra e o valor economizado.
*/

import 'dart:io';

void main() {

  print('Digite a quantidade de maçãs desejada:');
  int quantidade = int.parse(stdin.readLineSync()!);

  double valorFixoMaca = 1.30;
  double valorDescontoMaca;

  if (quantidade >= 30) {
    valorDescontoMaca = 0.98;
  } else {
    if (quantidade >=15) {
      valorDescontoMaca = 1.05;
    } else {
      if (quantidade >=5) {
        valorDescontoMaca = 1.15;
      } else {
        valorDescontoMaca = valorFixoMaca;
      }
    }
  }


  if (quantidade >= 30) {
    valorDescontoMaca = 0.98;
  } else if (quantidade >=15){
    valorDescontoMaca = 1.05;
  } else if (quantidade >=5)  {
    valorDescontoMaca = 1.15;
  } else {
    valorDescontoMaca = valorFixoMaca;
  }

  //Escreva um algoritmo que solicite a quantidade de maçãs desejadas, informe o valor
//total da compra e o valor economizado.

//valor já calculando com desconto, inclusive o fixo, caso seja menor que 5
double valorDaCompraComDesconto = quantidade * valorDescontoMaca;

//esse seria o valor suposto da compra sem desconto
double valorDaCompraSemDesconto = quantidade * valorFixoMaca;

double valorEconomia = valorDaCompraSemDesconto - valorDaCompraComDesconto;

print('Valor da compra é: $valorDaCompraComDesconto, e o valor economizado é: $valorEconomia');

 


}