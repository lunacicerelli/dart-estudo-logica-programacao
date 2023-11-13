import '../servico/gerador.dart';

class Pessoa {
  late int codigo;
  late String email;
  late String nome;
  late DateTime nascimento;
  late String endereco;

  Pessoa() {
    codigo = GeradorCodigo.gerarProximoCodigoPessoa();
  }

    @override
  String toString() {
    return 'Pessoa[codigo=$codigo, nome=$nome, email=$email, nascimento=$nascimento, endereco=@$endereco]';
  }
}
