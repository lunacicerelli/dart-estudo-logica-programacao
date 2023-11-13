import '../modelo/pessoa.dart';

class PessoaRepositorio {
  List<Pessoa> listaPessoas = [];

  adicionar(Pessoa pessoa) {
    listaPessoas.add(pessoa);
  }

  bool excluir(Pessoa pessoa) {
    bool pessoaFoiExcluida = listaPessoas.remove(pessoa);
    return pessoaFoiExcluida;
  }

  List<Pessoa> listar() {
    return listaPessoas;
  }

  Pessoa? buscarPorEmail(String email) {
    for (Pessoa pessoa in listaPessoas) {
      if (pessoa.email == email) {
        return pessoa;
      }
    }
    return null;
  }

   Pessoa? buscarPorCodigo(int codigo){
    return null;

  }
}
