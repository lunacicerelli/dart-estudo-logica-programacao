import '../servico/gerador.dart';

class Pessoa {
  late int codigo;
  late String email;
  late String nome;
  late DateTime nascimento;
  String? endereco;

  Pessoa(this.email, this.nome, this.nascimento, this.endereco) {
    codigo = GeradorCodigo.gerarProximoCodigoPessoa();
  }

    @override
  String toString() {
    return 'Pessoa[codigo=$codigo, nome=$nome, email=$email, nascimento=$nascimento, endereco=@$endereco]';
  }
}
