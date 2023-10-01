/*6. Faça uma função que receba por parâmetro as 3 notas do aluno e retorne a média
aritmética. Crie outra função que receba a média e retorne:
a. APROVADO se a média for maior ou igual a 7
b. EM RECUPERAÇÃO se a média for maior ou igual a 5
c. REPROVADO se média menor que 5
*/


import 'dart:io';

void main() {
  var (nota1, nota2, nota3) = solicitaNotas();
  double media = calculaMedia(nota1, nota2, nota3);
  String situacao = retornaSituacao(media);
  print(situacao);
}

(double, double, double) solicitaNotas(){
  print('Informe a nota 1:');
  double nota1 = double.parse(stdin.readLineSync()!);

  print('Informe a nota 2:');
  double nota2 = double.parse(stdin.readLineSync()!);

  print('Informe a nota 3:');
  double nota3 = double.parse(stdin.readLineSync()!);

  return (nota1, nota2, nota3);
}

double calculaMedia(double nota1, double nota2, double nota3){
  return (nota1 + nota2 + nota3)/3;
}

String retornaSituacao(double media){
  if(media >= 7){
    return 'APROVADO';
  } else if(media >= 5){
    return 'EM RECUPERAÇÃO';
  }
  return 'REPROVADO';
}