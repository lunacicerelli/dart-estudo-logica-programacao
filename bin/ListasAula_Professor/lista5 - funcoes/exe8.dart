/*8. Crie um algoritmo de cadastro de cliente onde as informações nome e e-mail são
obrigatórias, já o endereço, idade, número de telefone são opcionais.
*/


import 'dart:io';

void main() {
  String _nome = '';
  do {
    print('Informe o nome');
    _nome = stdin.readLineSync()!;
  } while (_nome == '');

  String _email = '';
  do {
    print('Informe o email');
    _email = stdin.readLineSync()!;
  } while (_nome == '');

  print('Informe o endereço');
  String _endereco = stdin.readLineSync()!;

  print('Informe a idade');
  String _idade = stdin.readLineSync()!;

  print('Informe o telefone');
  String _telefone = stdin.readLineSync()!;

  exibir(nome: _nome, email: _email, endereco: _endereco, idade: _idade, telefone: _telefone);
}

exibir({required String nome, required String email, String endereco = '', String idade = '',String telefone = ''}) {
  String saida = 'nome: $nome, e-mail: $email';
  if(endereco != ''){
    saida += ', endereço: $endereco';
  }
  if(idade != ''){
    saida += ', idade: $idade';
  }
  if(telefone != ''){
    saida += ', telefone: $telefone';
  }
  print(saida);
}
