/*11. Solicite um número (int) ao usuário, se o número informado for maior ou igual a 5
exiba a mensagem “Maior igual a 5”, senão, exiba “Menor que 5”. (Utilize o comando
if e else)
*/

import 'dart:io';

void main() {
   print('Digite um número: ');
  int numero = int.parse(stdin.readLineSync()!);

  if (numero >= 5) {
    print('Maior igual a 5');
  } else {
    print('Menor que 5');
  }
  


}