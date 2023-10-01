import 'dart:io';

const emailPos = 0;
const nomePos = 1;
const fonePos = 2;

void main() {
  List<List<String>> agendaContatos = [];

  String opcao = '';
  while ((opcao = menu()) != '5') {
    switch (opcao) {
      case '1':
        cadastrar(agendaContatos);
        break;
      case '2':
        exibir(agendaContatos);
        break;
      case '3':
        alterarContato(agendaContatos);
        break;
      case '4':
        removerContato(agendaContatos);
        break;
      case '5':
        break;
      default:
        print('Opção inválida!');
    }
  }
}

menu() {
  print('''
Digite a opção:
1. Cadastrar contato
2. Exibir contatos
3. Alterar contato
4. Remover contato
5. Sair
''');
  return stdin.readLineSync()!;
}

cadastrar(List<List<String>> agendaContatos) {
  print('Informe o email:');
  String email = stdin.readLineSync()!;
  if (email.isNotEmpty) {
    if (existeEmail(agendaContatos, email)) {
      print('E-mail já cadastrado!');
    } else {
      print('Informe o nome:');
      String nome = stdin.readLineSync()!;
      print('Informe o telefone:');
      String telefone = stdin.readLineSync()!;
      agendaContatos.add([email, nome, telefone]);
    }
  }
}

exibir(List<List<String>> agendaContatos) {
  print('----- Todos os contatos -----');
  for (int i = 0; i < agendaContatos.length; i++) {
    List<String> contato = agendaContatos[i];
    print(
        'E-mail: ${contato[emailPos]}, Nome: ${contato[nomePos]}, Telefone: ${contato[fonePos]}');
  }
  print('-----------------------------');
}

existeEmail(List<List<String>> agendaContatos, String email) {
  for (int i = 0; i < agendaContatos.length; i++) {
    List<String> contato = agendaContatos[i];
    if (contato[emailPos].toLowerCase() == email.toLowerCase()) {
      return true;
    }
  }
  return false;
}

List<String> buscaContatoPorEmail(List<List<String>> agendaContatos, String email) {
  for (int i = 0; i < agendaContatos.length; i++) {
    List<String> contato = agendaContatos[i];
    if (contato[emailPos].toLowerCase() == email.toLowerCase()) {
      return contato;
    }
  }
  return [];
}

List<String> solicitaEmailELocalizaContatoPorEmail(List<List<String>> agendaContatos){
  print('Informe o e-mail:');
  String email = stdin.readLineSync()!;
  if(email.isNotEmpty){
    List<String> contato = buscaContatoPorEmail(agendaContatos, email);
    if(contato.isNotEmpty){
      return contato;
    }else{
      print('E=mail não localizado');
    }
  }
  return [];
}

alterarContato(List<List<String>> agendaContatos){
  List<String> contato = solicitaEmailELocalizaContatoPorEmail(agendaContatos);
  if(contato.isNotEmpty){
      print('Informe o nome:');
      String nome = stdin.readLineSync()!;
      print('Informe o telefone:');
      String telefone = stdin.readLineSync()!;
      contato[nomePos] = nome;
      contato[fonePos] = telefone;
  }
}

removerContato(List<List<String>> agendaContatos){
  List<String> contato = solicitaEmailELocalizaContatoPorEmail(agendaContatos);
  if(contato.isNotEmpty){
      agendaContatos.remove(contato);
  }
}