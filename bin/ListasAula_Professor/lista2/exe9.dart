
import 'dart:io';

void main(){
  print('Informe o lado direito:');
  int direito = int.parse(stdin.readLineSync()!);

  print('Informe o lado inferior:');
  int inferior = int.parse(stdin.readLineSync()!);

  print('Informe o laso esquerdo:');
  int esquerdo = int.parse(stdin.readLineSync()!);

  if(direito == inferior && direito == esquerdo){
    print('Equilátero');
  }else if(direito != inferior && direito != esquerdo && inferior != esquerdo){
    print('Escaleno');
  }else{
    print('Isósceles');
  }
}
