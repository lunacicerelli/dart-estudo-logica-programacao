/*6. Solicite um número (int) ao usuário, multiplique por uma constante com um valor 50
e exiba o resultado.
*/

import 'dart:io';

void main() {
  print('Digite um número: ');
  int num1 = int.parse(stdin.readLineSync()!);

  const multiplique = 50;

  int calculo = num1 * multiplique;

  print('O resultado é: $calculo');
}
