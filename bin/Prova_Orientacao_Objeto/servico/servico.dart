import '../modelo/NotaAluno.dart';
import '../modelo/aluno.dart';
import '../modelo/curso.dart';
import '../modelo/pessoa.dart';
import '../modelo/professor.dart';
import '../repositorio/curso_repositorio.dart';
import '../repositorio/pessoa_repositorio.dart';

class Servico {
  PessoaRepositorio pessoaRepositorio = PessoaRepositorio();
  CursoRepositorio cursoRepositorio = CursoRepositorio();

  bool cadastrarPessoa(Pessoa pessoa) {
    Pessoa? pessoaEncontrada = pessoaRepositorio.buscarPorEmail(pessoa.email);
    if (pessoaEncontrada == null) {
      pessoaRepositorio.adicionar(pessoa);
      return true;
    }
    return false;
  }

  bool excluirPessoa(Pessoa pessoa) {
    if(pessoa is Aluno){
      Aluno aluno = pessoa;
      aluno.notas = []; //removendo as notas do aluno antes de excluir ele
    }
    bool pessoaFoiExcluida = pessoaRepositorio.excluir(pessoa);
    return pessoaFoiExcluida; 
  }

  List<Pessoa> listarPessoas() {
    List<Pessoa> listaDePessoas = pessoaRepositorio.listar();
    return listaDePessoas;
  }

  List<Aluno> listarAlunos() {
    List<Aluno> listaDeAlunos = [];
    List<Pessoa> listaDePessoas = pessoaRepositorio.listar();

    for (Pessoa pessoa in listaDePessoas) {
      if (pessoa is Aluno) {
        listaDeAlunos.add(pessoa);
      }
    }
    return listaDeAlunos;
  }

  List<Professor> listarProfessores() {
    List<Professor> listaDeProfessores = [];
    List<Pessoa> listaDePessoas = pessoaRepositorio.listar();

    for (Pessoa pessoa in listaDePessoas) {
      if (pessoa is Professor) {
        listaDeProfessores.add(pessoa);
      }
    }
    return listaDeProfessores;
  }

  adicionarCurso(Curso curso) {
    cursoRepositorio.adicionar(curso);
  }

  Curso? buscarCursoPorCodigo(int codigoCurso) {
    //Curso? curso = cursoRepositorio.buscarPorCodigo(codigoCurso);
    //return curso;
    return cursoRepositorio.buscarPorCodigo(codigoCurso);
  }

  Aluno? buscarAlunoPorCodigo(int codigoAluno) {
    Pessoa? pessoa = pessoaRepositorio.buscarPorCodigo(codigoAluno);
    if (pessoa is Aluno) {
      return pessoa;
    }
    return null;
  }

  addAlunoNoCurso(Aluno aluno, Curso curso) {
    List<Pessoa> pessoasDoCurso = curso.pessoas;
    int totalAlunos = 0;
    for (Pessoa pessoa in pessoasDoCurso) {
      if (pessoa is Aluno) {
        totalAlunos++;
      }
    }

    if (totalAlunos < curso.totalAlunos) {
      curso.addPessoa(aluno);
    }
  } 

  addProfessorNoCurso(Professor professor, Curso curso) {
    return curso.addPessoa(professor);
  }

  Professor? buscarProfessorPorCodigo(int codigoProfessor) {
    Pessoa? pessoa = pessoaRepositorio.buscarPorCodigo(codigoProfessor);
    if (pessoa is Professor) {
      return pessoa;
    }
    return null;
  }

  bool excluirProfessorNoCurso(Professor professor, Curso curso) {
    return excluirPessoaDoCurso(professor, curso);
  }

  Pessoa? buscarPessoaPorCodigo(int codigoPessoa) {
    return pessoaRepositorio.buscarPorCodigo(codigoPessoa);
  }

  bool excluirPessoaDoCurso(Pessoa pessoa, Curso curso) {
    List<Pessoa> pessoasDoCurso = curso.pessoas;
    bool pessoaFoiExcluida = pessoasDoCurso.remove(pessoa);
    return pessoaFoiExcluida;
  }

  bool excluirCurso(int codigo) {
    Curso? curso = cursoRepositorio.buscarPorCodigo(codigo);
    if (curso != null) {
      return cursoRepositorio.excluir(curso);
    }
    return false;
  }

  List<Curso> listarCursos() {
    return cursoRepositorio.listar();
  }

  double retornaMedia(aluno, curso) {
    NotaAluno? notaAlunoTemp;
    for (NotaAluno notaAluno in aluno.notas) {
      if (notaAluno.curso.codigo == curso.codigo) {
        notaAlunoTemp = notaAluno;
      }
    }

    if (notaAlunoTemp != null) {
      double somaNotas = 0;
      for (double nota in notaAlunoTemp.notas) {
        somaNotas += nota;
      }
      return somaNotas / notaAlunoTemp.notas.length;
    }
    return 0;
  }

  excluirNota(Aluno aluno, Curso curso, double notaParaSerExcluida) {
    NotaAluno? notaAlunoTemp;
    for (NotaAluno notaAluno in aluno.notas) {
      if (notaAluno.curso.codigo == curso.codigo) {
        notaAlunoTemp = notaAluno;
      }
    }
    if (notaAlunoTemp != null) {
      notaAlunoTemp.notas.remove(notaParaSerExcluida);
    }
  }

  cadastrarNota(Aluno aluno, Curso curso, double nota) {
    NotaAluno? notaAlunoTemp;
    for (NotaAluno notaAluno in aluno.notas) {
      if (notaAluno.curso.codigo == curso.codigo) {
        notaAlunoTemp = notaAluno;
      }
    }
    if (notaAlunoTemp == null) {
      notaAlunoTemp = NotaAluno();
      notaAlunoTemp.curso = curso;
      notaAlunoTemp.notas.add(nota);
      aluno.notas.add(notaAlunoTemp);
    } else {
      if (notaAlunoTemp.notas.length < 3) {
        notaAlunoTemp.notas.add(nota);
      }
    }
  }
}
