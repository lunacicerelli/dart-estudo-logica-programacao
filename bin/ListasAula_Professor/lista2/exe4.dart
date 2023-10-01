
import 'dart:io';

void main() {
  
  print('Informe o lado 1:');
  int lado1 = int.parse(stdin.readLineSync()!);

  print('Informe o lado 2:');
  int lado2 = int.parse(stdin.readLineSync()!);

  int area = (lado1 * lado2);
  print('A área do retângulo é: $area');

  //print('A área do retângulo é: ${lado1 * lado2}');
}