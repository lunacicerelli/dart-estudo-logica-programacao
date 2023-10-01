/*24. Solicite um número ao usuário e enquanto não for informado um valor maior que 5,
continue solicitando um novo número
*/

import 'dart:io';

void main() {
  int numero;

  // do{
  //   ...
  // } while(..); 
  // sempre irá executar uma vez até chegar na condição do while que vai verificar se finaliza ou volta pra o 'do'

  // while (...){
  //   ....
  // }
  // verifica a condição antes de entrar no bloco de código, pode ser que nem entre.

  do {
    print('Digite um número: ');
    numero = int.parse(stdin.readLineSync()!);
  } while (numero > 5);
}
