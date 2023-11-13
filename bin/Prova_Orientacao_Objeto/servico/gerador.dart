class GeradorCodigo {
  static late int codigoCurso = 1;
  static late int codigoPessoa = 1;

  static int gerarProximoCodigoCurso() {
    return codigoCurso++;
  }

    static int gerarProximoCodigoPessoa() {
    return codigoPessoa++;
  }
}
