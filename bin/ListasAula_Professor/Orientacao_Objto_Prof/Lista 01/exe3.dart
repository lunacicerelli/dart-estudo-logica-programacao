
import 'dart:io';

import 'package:intl/intl.dart';

import 'pessoa.dart';

void main(List<String> args) {
  List<Pessoa> listaPessoas = [];
  DateFormat df = DateFormat('dd/MM/yyyy');

  for(int i = 0 ; i < 1 ; i++){
    Pessoa pessoa = Pessoa();

    print('Informe o nome:');
    pessoa.nome = stdin.readLineSync()!;
    print('Informe a idade:');
    pessoa.idade = int.parse(stdin.readLineSync()!);
    print('Informe o estado civil:');
    pessoa.estadoCivil = stdin.readLineSync()!;
    print('Informe a data de nascimento (dd/MM/yyyy):');
    String dataNascimento = stdin.readLineSync()!;
    pessoa.dataNascimento = df.parse(dataNascimento);

    listaPessoas.add(pessoa);
  }

  // for(int i = 0 ; i < listaPessoas.length ; i++){
  //   //listaPessoas[i].mostrar();
  //   Pessoa pessoa = listaPessoas[i];
  //   pessoa.mostrar();
  // }
  for(final Pessoa pessoa in listaPessoas){
    pessoa.mostrar();
  }
  // listaPessoas.forEach((pessoa) {
  //   pessoa.mostrar();
  // });
}