import 'dart:io';

void main(List<String> args) {
  print('Informe o salário:');
  double salario = double.parse(stdin.readLineSync()!);

  print('Informe ajuste:');
  double ajuste = double.parse(stdin.readLineSync()!);

  double novoSalario = salario + (salario * (ajuste/100));
  print('O novo Salário é: $novoSalario');
}