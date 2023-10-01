/*3. Crie um método em Pessoa chamado mostrar, que exibe todas as informações da
pessoa no terminal.
*/

class Pessoa {
  String? nome;
  int? idade;
  String? estadoCivil;
  DateTime? dataNascimento;

  void mostrar (){
    print('Meu nome é $nome, nascido $dataNascimento, $idade anos e sou $estadoCivil');
  }
}


//fora da classe é função








//pessoa1.mostrar