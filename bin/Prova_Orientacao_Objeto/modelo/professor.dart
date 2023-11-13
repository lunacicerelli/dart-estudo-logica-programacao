

import '../modelo/pessoa.dart';

class Professor extends Pessoa{
  late double salario;

    @override
    String toString() {
    return 'Professor[codigo=$codigo, nome=$nome, email=$email, nascimento=$nascimento, endereco=@$endereco salario=$salario]';
  }
}