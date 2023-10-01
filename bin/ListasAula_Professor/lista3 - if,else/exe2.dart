
import 'dart:io';

void main() {

  print('Informe a quantidade de maçãs:');
  int qtde = int.parse(stdin.readLineSync()!);
  double valorUnitario;

  if(qtde < 5){
    valorUnitario = 1.30;
  } else if (qtde <= 15){
    valorUnitario = 1.15;
  } else if (qtde <= 30){
    valorUnitario = 1.05;
  } else {
    valorUnitario = 0.98;
  }

  double valorTotal = qtde * valorUnitario;
  double valorEconomizado = (qtde * 1.30) - valorTotal;
  print('Valor total: R\$ ${valorTotal.toStringAsFixed(2)}');
  print('Valor economizado: R\$ ${valorEconomizado.toStringAsFixed(2)}');
}