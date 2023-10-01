
import 'dart:io';

import 'veiculo.dart';

void main() {
  List<Veiculo> listaVeiculos = [];

  String opcao = "";
  while(opcao != "4"){
    exibirMenu();
    opcao = stdin.readLineSync()!;
    switch(opcao){
      case '1':
        cadastrar(listaVeiculos);
      case '2':
        listar(listaVeiculos);
      case '3':
        remover(listaVeiculos);
    }
  }
}

exibirMenu(){
  print('''
Informe a opção:
1. Cadastrar
2. Listar
3. Remover
4. Sair
''');
}

cadastrar(List<Veiculo> listaVeiculos){
  Veiculo veiculo = Veiculo();

  print('Informe o modelo:');
  veiculo.modelo = stdin.readLineSync()!;
  print('Informe a marca:');
  veiculo.marca = stdin.readLineSync()!;
  print('Informe o ano de fabricação:');
  veiculo.anoFabicacao = int.tryParse(stdin.readLineSync()!);
  print('Informe o ano modelo:');
  veiculo.anoModelo = int.tryParse(stdin.readLineSync()!);
  print('Informe o tipo de combustível:');
  veiculo.tipoCombustivel = stdin.readLineSync()!;

  listaVeiculos.add(veiculo);
}

listar(List<Veiculo> listaVeiculos){
  for(final Veiculo veiculo in listaVeiculos){
    print(veiculo);
  }
}

remover(List<Veiculo> listaVeiculos){
  print('Informe o modelo:');
  String modelo = stdin.readLineSync()!;

  Veiculo? veiculoSelecionado;
  for(final Veiculo veiculo in listaVeiculos){
    if(veiculo.modelo == modelo){
      veiculoSelecionado = veiculo;
      break;
    }
  }

  if(veiculoSelecionado != null){
    listaVeiculos.remove(veiculoSelecionado);
  }else{
    print('Veiculo não localizado');
  }
}