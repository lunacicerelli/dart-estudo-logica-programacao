/*2 FAça um algoritmo onde o usuário deve informar 5 números. 
Em seguida, exiba todos os números infomados e a soma desses números
*/

import 'dart:io';

void main() {
  List<int> listaNumeros = solicitaNumeros();
  exibe(listaNumeros);
}

solicitaNumeros(){
  List<int> listaNumeros = [];
  for(int i = 1 ; i <= 5 ; i++){
    print('Informe o número $i');
    int numero = int.parse(stdin.readLineSync()!);
    listaNumeros.add(numero);
  }
  return listaNumeros;
}

exibe(List<int> listaNumeros){
  int soma = 0;
  print('');
  for(int i = 0 ; i < listaNumeros.length ; i++){
    print(listaNumeros[i]);
    soma += listaNumeros[i];
  }
  print('A soma de todos os números é : $soma');
}