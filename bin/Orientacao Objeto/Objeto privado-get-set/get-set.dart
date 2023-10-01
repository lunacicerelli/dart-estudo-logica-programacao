

class Pessoa {
  String? _nome;
  int? _idade;

  set nomecompleto(String? nome) {
    print('setter');
    _nome = nome;
  }

  String? get nomecompleto {
    print('getter');
    return _nome;
  }

  setNome(String nome) {
    _nome = nome;
  }

  String? getNome() {
    return _nome;
  }

  @override
  String toString() {
    return 'nome=$_nome, idade=$_idade';
  }
}
