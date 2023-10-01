/* Informar o preço da passagem de ônibus (double) e perguntar a idade da pessoa. 
Mostrar o valor que a pessoa deve pagar dependendo da idade, seguindo a tabela a seguir: (utilize switch-case) - mostrar apenas 2 casas decimais no valor
Criança, idade menor que 8 - passagem grátis
Jovem, idade menor que 18 - 50% do valor
Adulto, idade menor que 60, 100% do valor
Idoso, idade maior ou igual a 60, passagem grátis

*/

import 'dart:io';

void main() {
  print("Digite o preço da passagem:");
  double valorPassagem = double.parse(stdin.readLineSync()!);

  print('Qual a sua idade:');
  int idade = int.parse(stdin.readLineSync()!);

  double valorApagar;

  switch (idade) {
    case < 8:
      valorApagar = 0.0;
      print('Criança o valor é Grátis');
      break;
    case < 18:
      valorApagar = valorPassagem / 2;
      print('Jovem ganha 50%');
      break;
    case < 60:
      valorApagar = valorPassagem;
      print('Adulto paga inteira');
      break;
    default:
      valorApagar = 0.0;
      print('Idoso é grátis');
      break;
  }

  print('O valor da passagem é $valorApagar');
}
