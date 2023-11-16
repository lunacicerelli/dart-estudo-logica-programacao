import '../modelo/pessoa.dart';

class Professor extends Pessoa {
  late double salario;

  Professor(String email, String nome, DateTime nascimento, String endereco, this.salario)
      : super(nome, email, nascimento, endereco);

  @override
  String toString() {
    return 'Professor[codigo=$codigo, nome=$nome, email=$email, nascimento=$nascimento, endereco=@$endereco salario=$salario]';
  }
}
