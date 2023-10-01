/*7. Solicite um número ao usuário.
Salve esse número em uma variável do tipo int.
Se o valor for maior que 10 exiba com print a mensagem ‘É MAOR’, se não exiba
com print a mensagem “É MENOR”. Utilize IF e ELSE.
*/

import 'dart:io';

void main() {
  print('Digite um número');
  int numero = int.parse(stdin.readLineSync()!);

  if (numero >= 10) {
    print('É MAIOR');
  } else {
    print('É MENOR');
  }
}
