
import 'dart:io';

void main(List<String> args) {
  
  print('Informe o custo de fabricação:');
  double custo = double.parse(stdin.readLineSync()!);

  double percDistribuidor = custo*0.28; // custo * (28/100)
  double impostos = custo*0.45;

  double valorTotal = custo + percDistribuidor + impostos;
  print('Valor total: $valorTotal');
}