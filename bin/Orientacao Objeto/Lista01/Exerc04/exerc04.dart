/*4. Crie uma lista de pessoas (3 pessoas), solicite ao usuário as informações da pessoa
através do terminal. Ao final, exiba as informações de todas as pessoas. Utilize laço
de repetição para criar o objeto e adicionar na lista.
*/

import '../Exerc03/pessoa.dart';
import 'dart:io';

void main() {
  List<Pessoa> listaPessoas = [];

  for (int i = 0; i < 3; i++) {
    print('Digite o nome:');
    String nome = stdin.readLineSync()!;

    print('Digite a idade:');
    int idade = int.parse(stdin.readLineSync()!);

    print('Digite o estado civil');
    String estadoCivil = stdin.readLineSync()!;

    Pessoa pessoa = Pessoa();
    pessoa.nome = nome;
    pessoa.idade = idade;
    pessoa.estadoCivil = estadoCivil;

    listaPessoas.add(pessoa);
  }

  for (int i = 0; i < listaPessoas.length; i++) {
    Pessoa pessoa = listaPessoas[i];

    pessoa.mostrar();
  }
}
