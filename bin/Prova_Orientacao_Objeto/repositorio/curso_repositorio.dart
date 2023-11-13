import '../modelo/curso.dart';

class CursoRepositorio {
  List<Curso> listaCurso = [];

  adicionar(Curso curso) {
    listaCurso.add(curso);
  }

  bool excluir(Curso curso) {
    bool cursoFoiExcluido = listaCurso.remove(curso);
    return cursoFoiExcluido;
  }

  List<Curso> listar() {
    return listaCurso;
  }

 Curso? buscarPorCodigo(int codigo){
    return null;

  }
}
