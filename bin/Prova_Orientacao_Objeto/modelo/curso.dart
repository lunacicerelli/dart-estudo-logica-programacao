

import '../servico/gerador.dart';
import 'pessoa.dart';

class Curso{
  late int codigo;
  late String nome;
  late int totalAlunos;
  late List<Pessoa> _pessoas;


  Curso(this.nome, this.totalAlunos){
    codigo = GeradorCodigo.gerarProximoCodigoCurso();
    _pessoas = [];
  }

  
  addPessoa(Pessoa pessoa){
    _pessoas.add(pessoa);
  }

  List<Pessoa> get pessoas{
    return _pessoas;
  }

  @override
  String toString() {
    return 'Curso[codigo=$codigo, nome=$nome, totalAlunos=$totalAlunos, pessoas=$pessoas]';
  }

}