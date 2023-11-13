import '../modelo/pessoa.dart';
import 'NotaAluno.dart';

class Aluno extends Pessoa {
  late List<NotaAluno> notas;

  @override
  String toString() {
    return 'Aluno[codigo=$codigo, nome=$nome, email=$email, nascimento=$nascimento, endereco=@$endereco, notas=$notas]';
  }
}
