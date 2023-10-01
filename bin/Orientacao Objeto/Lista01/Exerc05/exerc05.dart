/* 5. Modifique o exercício anterior e adicione data de nascimento do tipo DateTime a
Pessoa */

import '../Exerc05/pessoa.dart';
import 'dart:io';
import 'package:intl/intl.dart';

void main() {
  List<Pessoa> listaPessoas = [];

  for (int i = 0; i < 3; i++) {
    print('Digite o nome:');
    String nome = stdin.readLineSync()!;

    print('Digite a idade:');
    int idade = int.parse(stdin.readLineSync()!);

    print('Digite o estado civil');
    String estadoCivil = stdin.readLineSync()!;

    print('Digite a data de nascimento no formato dd/MM/yyyy');
    String data = stdin.readLineSync()!;

    DateFormat df = DateFormat('dd/MM/yyyy');
    DateTime dateTime = df.parse(data);

    Pessoa pessoa = Pessoa();
    pessoa.nome = nome;
    pessoa.idade = idade;
    pessoa.estadoCivil = estadoCivil;
    pessoa.dataNascimento = dateTime;

    listaPessoas.add(pessoa);
  }

  for (int i = 0; i < listaPessoas.length; i++) {
    Pessoa pessoa = listaPessoas[i];

    pessoa.mostrar();
  }
}
