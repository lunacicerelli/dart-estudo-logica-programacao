
import 'dart:io';

void main() {
  print('Informe o número 1:');
  int num1 = int.parse(stdin.readLineSync()!);

  print('Informe o número 2:');
  int num2 = int.parse(stdin.readLineSync()!);

  print('Informe o número 3:');
  int num3 = int.parse(stdin.readLineSync()!);

  if(num1 < num2 && num1 < num3){
    // 1 É MENOR
    if(num2 < num3){
      print('$num1 $num2 $num3');
    }else{
      print('$num1 $num3 $num2');
    }
  } else if (num2 < num1 && num2 < num3){
    // 2 É MENOR
    if(num1 < num3){
      print('$num2 $num1 $num3');
    }else{
      print('$num2 $num3 $num1');
    }
  } else {
    // 3 É MENOR
    if(num1 < num2){
      print('$num3 $num1 $num2');
    }else{
      print('$num3 $num2 $num1');
    }
  }
}