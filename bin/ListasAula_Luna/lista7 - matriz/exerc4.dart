/* Crie um algoritmo de uma agenda de contanto com as seguintes opções do menu:
1 Cadastrar contato (nome, e-mail, telefone)
2. Exibir contatos
3. Alterar contato
4. Remover contato
5. Sair
*/

import 'dart:io';

void main() {
  List<List<String>> listaPessoas = [];

  String nome = '';
  while ((nome = solicitaInfo('Informe o nome:')).toLowerCase() != 'sair') {
    String idade = solicitaInfo('Informe a idade:');
    String email = solicitaInfo('Informe a e-mail:');
    String telefone = solicitaInfo('Informe a ctelefone:');
    listaPessoas.add([nome, idade, email, telefone]);
  }
  print(listaPessoas);
}
String solicitaInfo(String msg) {
  print(msg);
  return stdin.readLineSync()!;
}
