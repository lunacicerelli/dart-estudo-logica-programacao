/* Pizza mais barata (usar while, lista, constante, função). 

Pedir para o usuário a quantidade de pizzas para cadastrar.

Pedir para o usuário o nome da pizza, o valor, e o tamanho.
Após coletar todos os dados, mostrar qual a pizza que mais vale a pena, usando as formulas abaixo.
Desafio: fazer 2 whiles, onde o primeiro vc só vai coletar as informações, e o segundo vc vai calcular as informações, 
onde o objetivo é exercitar o uso de listas.
Criar a classe pizza com todos os seus atributos.
Criar um método dentro da classe que calcule o custo por area da pizza.


Constante PI = 3,1415
Area da pizza = PI * ((tamanho / 2) ^ 2)
Custo por area = valorPizza / areaPizza

A pizza que tiver o menor custo por área é a que mais vale a pena. */
import 'dart:io';

import 'pizza.dart';

void main() {
  List<Pizza> listaPizza = [];

  print('Digite a quantidade de pizza');
  int qunatidade = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < qunatidade; i++) {
    print("Digite o tamnho, ex: pequena, média, grande, família:");
    String nome = stdin.readLineSync()!;

    print('Digite o valor da pizza: ');
    double valor = double.parse(stdin.readLineSync()!);

    print('Digite o tamanho em cm:');
    int tamanho = int.parse(stdin.readLineSync()!);

    Pizza pizza = Pizza();
    pizza.nome = nome;
    pizza.valor = valor;
    pizza.tamanho = tamanho;

    listaPizza.add(pizza);
  }

  Pizza pizzaComMenorCustoArea = Pizza();
  double menorCustoArea = 1000;

  for (int i = 0; i < listaPizza.length; i++) {
    Pizza pizza = listaPizza[i];

    double custoPorArea2 = pizza.calcularMenorCustoPorArea();

    if (custoPorArea2 < menorCustoArea) {
      pizzaComMenorCustoArea = pizza;
      menorCustoArea = custoPorArea2;
    }
  }

  String? nome = pizzaComMenorCustoArea.nome;

  print('A pizza com menor custo é $nome');
}
