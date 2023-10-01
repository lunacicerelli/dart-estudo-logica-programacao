
import 'dart:io';

void main() {
  List<List<int>> numeros = [
    [0,0,0,0],
    [0,0,0,0],
    [0,0,0,0],
    [0,0,0,0],
  ];

  for(int i = 0 ; i < 4 ; i++){
    for(int j = 0 ; j < 4 ; j++){
      print('Informe o número:');
      numeros[i][j] = int.parse(stdin.readLineSync()!);
    }
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