/*3. Em uma lanchonete há cinco produtos sendo vendidos conforme o quadro abaixo, o
usuário deve informar o código do produto e o valor pago. Nosso sistema precisa
validar se o valor pago é suficiente e calcular o troco se houver.
Código  - Produto  - Valor
1         Fritas     R$ 30,00
2         X-Salada   R$ 25,00
3         Hot-Dog    R$ 12,00
4         Coca-cola  R$ 8,00
5         Água       R$ 2,00
*/

import 'dart:io';

void main() {
  int codigoDoProduto;

  print('Informe o código do produto:');
  codigoDoProduto = int.parse(stdin.readLineSync()!);

  print('Informe quanto você vai pagar:');
  double valorPago = double.parse(stdin.readLineSync()!);

  double valorDoProduto;

  switch (codigoDoProduto) {
    case 1:
      //1  Fritas  R$ 30,00
      valorDoProduto = 30.00;
      break;
    case 2:
      //2  X-Salada R$ 25,00
      valorDoProduto = 25.00;
      break;
    case 3:
      //3  Hot-Dog  R$ 12,00
      valorDoProduto = 12.00;
      break;
    case 4:
      //4 Coca-cola R$ 8,00
      valorDoProduto = 8.00;
      break;
    case 5:
      //5 Água R$ 2,00
      valorDoProduto = 2.00;
      break;
    default:
      valorDoProduto = 9000; //apenas para o programa funcionar
      print('Opção inválida');
  }

  //Nosso sistema precisa validar se o valor pago é suficiente e calcular o troco se houver.

  bool valorEhSuficiente;
  if (valorPago >= valorDoProduto) {
    valorEhSuficiente = true;
  } else {
    valorEhSuficiente = false;
  }

  //maneira mais bonita de fazer o if ele
  // acima
  valorEhSuficiente = valorPago >= valorDoProduto;

  if (valorEhSuficiente == true) {
    print('Produto pago com sucesso!');
    //valor pode ser igual ou precisar troco

    if (valorPago > valorDoProduto) {
      double troco = valorPago - valorDoProduto;
      print('Seu troco é: $troco');
    }
  } else {
    print("Valor insuficiente");
  }
}
