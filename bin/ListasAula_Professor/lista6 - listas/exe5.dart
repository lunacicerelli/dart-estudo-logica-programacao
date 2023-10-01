/*5. Crie um algoritmo que solicite 5 números ao usuário, informe quantos números 10
foram informados.*/



import 'dart:io';

void main() {
  List<int> listaNumeros = [];

  for(int i = 1 ; i<= 5 ; i++){
    print('Informe o número $i');
    int valor = int.parse(stdin.readLineSync()!);
    listaNumeros.add(valor);
  }

  int total = 0;
  for(int i = 0 ; i < listaNumeros.length ; i++){
    if(listaNumeros[i] == 10){
      total++;
    }
  }

  print('O total de 10 é: $total');
}