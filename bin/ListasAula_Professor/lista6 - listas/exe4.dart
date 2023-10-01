/*Crie um algoritimo que solicite 5 números ao usuário, 
em seguida exiba os números em ordem contrária á que foram informados*/



import 'dart:io';

void main() {
  
  List<int> listaNumeros = [];

  for(int i = 1 ; i <= 5 ; i++){
    print('Informe o número $i');
    int valor = int.parse(stdin.readLineSync()!);
    listaNumeros.add(valor);
  }

  for(int i = listaNumeros.length-1 ; i >= 0 ; i--){
    print(listaNumeros[i]);
  }
}