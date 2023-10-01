
import 'dart:io';

void main() {
  List<List<int>> numeros = [];

  for(int i = 0 ; i < 4 ; i++){
    List<int> temp = [];
    for(int j = 0 ; j < 4 ; j++){
      print('Informe o número:');
      int numero = int.parse(stdin.readLineSync()!);
      temp.add(numero);
    }
    numeros.add(temp);
  }

  int soma = 0;
  for(int i = 0 ; i < 4 ; i++){
    for(int j = 0 ; j < 4 ; j++){
      soma += numeros[i][j];
    }
  }
  print(numeros);
  print('Soma = $soma');
}