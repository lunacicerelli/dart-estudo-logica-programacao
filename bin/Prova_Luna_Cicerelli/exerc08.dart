/* 8. (peso 1,5) Crie uma lista para números inteiros, solicite números ao usuário e
adicione na lista até que seja pressionado ENTER sem nenhum valor informado. Ao
final, exiba todos os números presentes na lista e a quantidade de números que
foram adicionados na lista.
*/

import 'dart:io';

void main() {
  String sair = '';
  List<int> listaNumeros = [];

  String valor = '0';
  while (valor != sair) {
    print('Informe um número:');
    valor = stdin.readLineSync()!;
    
    if (valor != sair) {
      int numero = int.parse(valor);
      listaNumeros.add(numero);
    }
  }
  for (int i = 0; i < listaNumeros.length; i++) {
    print(listaNumeros[i]);
  }

  print('Qtde de números é: ${listaNumeros.length}');
}
