/*
*/



import 'dart:io';

void main(){

List<List<String>> listaPessoas = [];

String nome = '';
while((nome = solicitaInfo('Informe o nome:')).toLowerCase() != 'sair'){
  String idade = solicitaInfo('Informe a idade:');
  String cidade = solicitaInfo('Informe a cidade:');
  listaPessoas.add([nome, idade, cidade]);
}
print(listaPessoas);
}

String solicitaInfo(String msg){
  print(msg);
  return stdin.readLineSync()!;
}
  