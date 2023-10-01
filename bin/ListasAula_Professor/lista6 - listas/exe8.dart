/* 8. Crie um algoritmo de lista de presença com as seguintes funcionalidades:
a. Cadastrar participante
b. Remover participante
c. Listar participantes
d. Finalizar aplicação
*/

import 'dart:io';

void main() {
  List<String> listaPresenca = [];

  String opcao = '';
  while (opcao != '4') {
    exibeMenu();
    opcao = stdin.readLineSync()!;

    switch(opcao){
      case '1':
        cadastrarParticipante(listaPresenca);
        break;
      case '2':
        removerParticipante(listaPresenca);
        break;
      case '3':
        listarParticipantes(listaPresenca);
        break;
      case '4':
        break;
      default:
        print('Opção inválida');
    }
  }
}

exibeMenu() {
  //print('1 - Cadastrar participante\n2 - Remover participante\n3 - Listar participantes\n4 - Finalizar a aplicação');
  print('''
1 - Cadastrar participante
2 - Remover participante
3 - Listar participantes
4 - Finalizar a aplicação
''');
}

cadastrarParticipante(List<String> listaPresenca){
  print('Informe o nome:');
  String nome = stdin.readLineSync()!;
  if(nome.isNotEmpty){
    listaPresenca.add(nome);
  }
}

listarParticipantes(List<String> listaPresenca){
  print('\nLista de presença:');
  for(int i = 0 ; i < listaPresenca.length ; i++){
    print(listaPresenca[i]);
  }
  print('');
}

removerParticipante(List<String> listaPresenca){
  print('Informe o nome:');
  String nome = stdin.readLineSync()!;
  if(nome.isNotEmpty){
    if(listaPresenca.contains(nome)){
      listaPresenca.remove(nome);
    }else{
      print('Nome não localizado!');
    }
  }
}