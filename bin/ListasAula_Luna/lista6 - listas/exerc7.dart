/*7. Crie um algoritmo para armazenar os itens do pedido de um cliente em um
restaurante. O cardápio possui 10 itens, solicite os itens ao usuário e enquanto não
for informado o código 11 continue armazenando em uma lista os itens.
Quando digitado 11 exiba os itens escolhidos e o total da compra.
Crie você mesmo o cardápio com a descrição e valor de cada item.
*/

import 'dart:io';

void main() {
  List<int> itensDoPedido = [];
  List<int> cardapio = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int valorDigitado;

  print('Informe o código do produto: $cardapio');
  valorDigitado = int.parse(stdin.readLineSync()!);

  itensDoPedido.add(valorDigitado);

  while (valorDigitado <= 10) {
    print('Informe o código do produto: $cardapio');
    valorDigitado = int.parse(stdin.readLineSync()!);

    if (valorDigitado >= 11) {
      for (int i = 0; i < itensDoPedido.length; i++);
      if (valorDigitado >= 11) {
        valorDigitado++;
      }
    }
  }

  print('Os itens escolhidos foram: $itensDoPedido');
}
