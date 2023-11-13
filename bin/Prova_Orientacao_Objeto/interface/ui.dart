import 'dart:io';

import '../modelo/aluno.dart';
import '../modelo/curso.dart';
import '../modelo/pessoa.dart';
import '../modelo/professor.dart';
import '../servico/servico.dart';
import 'package:intl/intl.dart';

class UI {
  Servico servico = Servico();

  menuPrincipal() {
    String opc = '';
    while (opc != '10') {
      print(
          'Informe a opção:\n1. Gerenciar Alunos\n2. Gerenciar Professor\n3. Gerenciar Curso\n4. Gerenciar Nota\n10. Sair');
      opc = stdin.readLineSync()!;
      switch (opc) {
        case "1":
          menuGerenciarAluno();
          break;
        case '2':
          menuGerenciarProfessor();
          break;
        case '3':
          menuGerenciarCurso();
          break;
        case '4':
          menuGerenciarNota();
          break;
        
        default:
        print('opção inválida');
          break;
      }
    }
  }

  menuGerenciarAluno() {
    String opc = '';
    while (opc != '10') {
      print('Informe a opção:');
      print('1. Cadastrar aluno');
      print('2. Editar aluno');
      print('3. Excluir aluno');
      print('4. Listar alunos');
      print('10. Voltar');
      opc = stdin.readLineSync()!;
      switch (opc) {
        case '1':
          menuCadastrarAluno();
          break;
        case '2':
          menuAlterarAluno();
          break;
        case '3':
          menuExcluirAluno();
          break;
        case '4':
          menuListarAluno();
          break;
      }
    }
  }

  menuCadastrarAluno() {
    print('Informe o e-mail:');
    String email = stdin.readLineSync()!;

    print('Informe o nome:');
    String nome = stdin.readLineSync()!;

    print('Informe a data de nascimento: dd/MM/yyyy');
    String salvarNascimento = stdin.readLineSync()!;
    DateFormat df = DateFormat('dd/MM/yyyy');
    DateTime nascimento = df.parse(salvarNascimento);

    print('Informe o endereço completo:');
    String endereco = stdin.readLineSync()!;

    Aluno aluno = Aluno();
    aluno.nome = nome;
    aluno.email = email;
    aluno.nascimento = nascimento;
    aluno.endereco = endereco;

    bool resultado = servico.cadastrarPessoa(aluno);
    if (resultado) {
      print('Pessoa cadastrada com sucesso!');
    } else {
      print('Falha ao cadastrar!');
    }
  }

  menuAlterarAluno() {}

  menuExcluirAluno() {
    print('Digite o e-mail do aluno a ser excluído:');
    String email = stdin.readLineSync()!;

    Pessoa pessoa = Pessoa();
    pessoa.email = email;

    bool alunoFoiExcluido = servico.excluirPessoa(pessoa);
    if (alunoFoiExcluido) {
      print('Aluno excluída com sucesso');
    } else {
      print('Falha ao excluir!');
    }
  }

  menuListarAluno() {
    List<Pessoa> listaPessoas = servico.listarAlunos();

    for (Pessoa pessoa in listaPessoas) {
      print(pessoa.toString());
    }
  }

  menuGerenciarProfessor() {
    String opc = '';
    while (opc != '10') {
      print('Informe a opção:');
      print('1. Cadastrar professor');
      print('2. Editar professor');
      print('3. Excluir professor');
      print('4. Listar professores');
      print('10. Voltar');
      opc = stdin.readLineSync()!;
      switch (opc) {
        case '1':
          menuCadastrarProfessor();
          break;
        case '2':
          menuAlterarProfessor();
          break;
        case '3':
          menuExcluirProfessor();
          break;
        case '4':
          menuListarProfessor();
          break;
      }
    }
  }

  menuCadastrarProfessor() {
    print('Informe o e-mail:');
    String email = stdin.readLineSync()!;

    print('Informe o nome:');
    String nome = stdin.readLineSync()!;

    print('Informe a data de nascimento: dd/MM/yyyy');
    String salvarNascimento = stdin.readLineSync()!;
    DateFormat df = DateFormat('dd/MM/yyyy');
    DateTime nascimento = df.parse(salvarNascimento);

    print('Informe o endereço completo:');
    String endereco = stdin.readLineSync()!;

    Professor professor = Professor();
    professor.nome = nome;
    professor.email = email;
    professor.nascimento = nascimento;
    professor.endereco = endereco;

    bool resultado = servico.cadastrarPessoa(professor);
    if (resultado) {
      print('Professor cadastrada com sucesso!');
    } else {
      print('Falha ao cadastrar!');
    }
  }

  menuAlterarProfessor() {}

  menuExcluirProfessor() {
    print('Digite o e-mail do professor a ser excluído:');
    String email = stdin.readLineSync()!;

    Pessoa pessoa = Pessoa();
    pessoa.email = email;

    bool professorFoiExcluido = servico.excluirPessoa(pessoa);
    if (professorFoiExcluido) {
      print('Professor excluído com sucesso');
    } else {
      print('Falha ao excluir!');
    }
  }

  menuListarProfessor() {
    List<Professor> listaProfessores = servico.listarProfessores();

    for (Professor professor in listaProfessores) {
      print(professor.toString());
    }
  }

  menuGerenciarCurso() {
    String opc = '';
    while (opc != '10') {
      print('Informe a opção:');
      print('1. Cadastrar curso');
      print('2. Editar curso');
      print('3. Excluir curso');
      print('4. Listar cursos');
      print('10. Voltar');
      opc = stdin.readLineSync()!;
      switch (opc) {
        case '1':
          menuCadastrarCurso();
          break;
        case '2':
          menuAlterarCurso();
          break;
        case '3':
          menuExcluirCurso();
          break;
        case '4':
          menuListarCurso();
          break;
      }
    }
  }

  menuCadastrarCurso() {
    print('Informe o nome do curso a ser criado:');
    String nome = stdin.readLineSync()!;

    print('Informe a quantidade total de alunos:');
    int totalAlunos = int.parse(stdin.readLineSync()!);

    Curso curso = Curso();
    curso.nome = nome;
    curso.totalAlunos = totalAlunos;

    servico.adicionarCurso(curso);
  }

  menuAlterarCurso() {
    //1 add aluno, 2 add professor, 3 remover pessoa
    String opc = '';
    while (opc != '10') {
      print('Informe a opção:');
      print('1. Adicionar Aluno no curso');
      print('2. Adicionar Professor no curso');
      print('3. Excluir pessoa do curso');
      print('10. Voltar');
      opc = stdin.readLineSync()!;
      switch (opc) {
        case '1':
          menuAddAlunoNoCurso();
          break;
        case '2':
          menuAddProfessorNoCurso();
          break;
        case '3':
          menuRemoverPessoaDoCurso();
          break;
      }
    }
  }

  menuAddAlunoNoCurso() {
    print('Digite o código do curso a receber um aluno: ');
    int codigoCurso = int.parse(stdin.readLineSync()!);
    Curso? curso = servico.buscarCursoPorCodigo(codigoCurso);

    if (curso != null) {
      print("Digite o código do aluno a ser adicionado nesse curso:");
      int codigoAluno = int.parse(stdin.readLineSync()!);
      Aluno? aluno = servico.buscarAlunoPorCodigo(codigoAluno);

      if (aluno != null) {
        servico.addAlunoNoCurso(aluno, curso);
      } else {
        print("Aluno com código $codigoAluno não existe!");
      }
    } else {
      print('Curso com código $codigoCurso não existe!');
    }
  }

  menuAddProfessorNoCurso() {
    print('Digite o código do curso a receber o professor: ');
    int codigoCurso = int.parse(stdin.readLineSync()!);
    Curso? curso = servico.buscarCursoPorCodigo(codigoCurso);

    if (curso != null) {
      print("Digite o código do professor a ser adicionado nesse curso:");
      int codigoProfessor = int.parse(stdin.readLineSync()!);
      Professor? professor = servico.buscarProfessorPorCodigo(codigoProfessor);

      if (professor != null) {
        servico.addProfessorNoCurso(professor, curso);
      } else {
        print("Professor com código $codigoProfessor não existe!");
      }
    } else {
      print('Curso com código $codigoCurso não existe!');
    }
  }

  menuRemoverPessoaDoCurso() {
    print('Digite o código do curso que a pessoa será removida: ');
    int codigoCurso = int.parse(stdin.readLineSync()!);
    Curso? curso = servico.buscarCursoPorCodigo(codigoCurso);

    if (curso != null) {
      print("Digite o código da pessoa a ser removida do curso:");
      int codigoPessoa = int.parse(stdin.readLineSync()!);
      Pessoa? pessoa = servico.buscarPessoaPorCodigo(codigoPessoa);

      if (pessoa != null) {
        servico.excluirPessoaDoCurso(pessoa, curso);
      } else {
        print("Pessoa com código $codigoPessoa não existe!");
      }
    } else {
      print('Curso com código $codigoCurso não existe!');
    }
  }

  menuExcluirCurso() {
    print('Digite o código do curso a ser excluído:');
    int codigo = int.parse(stdin.readLineSync()!);

    bool cursoFoiExcluido = servico.excluirCurso(codigo);
    if (cursoFoiExcluido) {
      print('Curso excluído com sucesso');
    } else {
      print(
          'Falha ao excluir!'); //melhorar mensagem: se o código existe ou se tinha aluno no curso
    }
  }

  menuListarCurso() {
    List<Curso> listaCursos = servico.listarCursos();

    for (Curso curso in listaCursos) {
      print(curso.toString());
    }
  }

  menuGerenciarNota() {
    String opc = '';
    while (opc != '10') {
      print('Informe a opção:');
      print('1. Adicionar nota para o Aluno x no Curso y:');
      print('2. Editar nota');
      print('3. Excluir nota para o Aluno x no Curso y:');
      print('4. Exibir média do Aluno x no Curso y:');
      print('10. Voltar');
      opc = stdin.readLineSync()!;
      switch (opc) {
        case '1':
          menuCadastrarNota();
          break;
        case '2':
          menuAlterarNota();
          break;
        case '3':
          menuExcluirNota();
          break;
        case '4':
          menuExibirMedia();
          break;
      }
    }
  }

  menuCadastrarNota() {
    print('Digite o código do Aluno a receber a nota: ');
    int codigoAluno = int.parse(stdin.readLineSync()!);
    Aluno? aluno = servico.buscarAlunoPorCodigo(codigoAluno);

    if (aluno != null) {
      print("Digite o código do curso a ser adicionada a nota:");
      int codigoCurso = int.parse(stdin.readLineSync()!);
      Curso? curso = servico.buscarCursoPorCodigo(codigoCurso);

      if (curso != null) {
        print("Digite a nota do aluno:");
        double notaAluno = double.parse(stdin.readLineSync()!);

        servico.cadastrarNota(aluno, curso, notaAluno);
      }
    }
  }

  menuAlterarNota() {}

  menuExcluirNota() {
    print('Digite o código do Aluno que a nota será excluída: ');
    int codigoAluno = int.parse(stdin.readLineSync()!);
    Aluno? aluno = servico.buscarAlunoPorCodigo(codigoAluno);

    if (aluno != null) {
      print("Digite o código do curso que a nota será excluída:");
      int codigoCurso = int.parse(stdin.readLineSync()!);
      Curso? curso = servico.buscarCursoPorCodigo(codigoCurso);

      if (curso != null) {
        print("Digite a nota a sex excluída:");
        double notaParaSerExcluida = double.parse(stdin.readLineSync()!);

        servico.excluirNota(aluno, curso, notaParaSerExcluida);
      }
    }
  }

  menuExibirMedia() {
    print('Digite o código do Aluno que a média será exibida: ');
    int codigoAluno = int.parse(stdin.readLineSync()!);
    Aluno? aluno = servico.buscarAlunoPorCodigo(codigoAluno);

    if (aluno != null) {
      print("Digite o código do curso que a média será exibida:");
      int codigoCurso = int.parse(stdin.readLineSync()!);
      Curso? curso = servico.buscarCursoPorCodigo(codigoCurso);

      if (curso != null) {
        double media = servico.retornaMedia(aluno, curso);
        print("A média é $media");
      }
    }
  }
}
