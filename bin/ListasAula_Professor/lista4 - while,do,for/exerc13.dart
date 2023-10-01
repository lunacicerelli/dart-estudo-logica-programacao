/*13. Crie um programa que solicite a idade, o sexo (M/F) e o salário até que seja
informado “SAIR” ao invés da idade.
Calcule e mostre:
a) A média das idades;
b) A média dos salários;
c) A maior e menor idade;
d) O maior e menor salário;
e) O sexo da pessoa com menor salário.
*/


import 'dart:io';

void main(List<String> args) {
  
  const sair = 'SAIR';

  int somaIdades = 0;
  double somaSalarios = 0;
  int qtdePessoas = 0;
  int menorIdade = 1000;
  int maiorIdade = 0;
  double menorSalario = 1000000000;
  double maiorSalario = 0;
  String sexoMenorSalario = '';

  String valor = '';
  while(valor.toUpperCase() != sair){
    print('Informe a idade ou SAIR:');
    valor = stdin.readLineSync()!;

    if(valor.toUpperCase() == sair){
      continue; 
      //break
    }
    int idade = int.parse(valor);
    somaIdades += idade;
    if(idade < menorIdade){
      menorIdade = idade;
    }
    if(idade > maiorIdade){
      maiorIdade = idade;
    }

    print('Informe o sexo:');
    String sexo = stdin.readLineSync()!;

    print('Informe o salário:');
    double salario = double.parse(stdin.readLineSync()!);
    somaSalarios += salario;
    if(salario < menorSalario){
      menorSalario = salario;
      sexoMenorSalario = sexo;
    }
    if(salario > maiorSalario){
      maiorSalario = salario;
    }

    qtdePessoas++;
  }

  double mediaIdades = somaIdades/qtdePessoas;
  double mediaSalarios = somaSalarios/qtdePessoas;

  print('A) média das idades: ${mediaIdades.toInt()}');
  print('B) média dos salários: ${mediaSalarios.toInt()}');
  print('C) a maior idade é $maiorIdade e a menor idade é $menorIdade');
  print('D) o maior salário é $maiorSalario e o menor salário é $menorSalario');
  print('E) o sexo com menor salário é: $sexoMenorSalario');
}