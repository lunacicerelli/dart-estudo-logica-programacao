

import 'curso.dart';

class NotaAluno{
  List<double> notas = [];
  late Curso curso;

  @override
  String toString() {
    return 'NotaAluno[notas=$notas, curso=$curso]';
  }
}