

import 'pessoa.dart';

void main(List<String> args) {
  Pessoa pessoa1 = Pessoa();
  pessoa1.nome = 'Maria Silva';
  pessoa1.idade = 19;
  pessoa1.estadoCivil = 'Casada';

  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = 'João Pereira';
  pessoa2.idade = 50;
  pessoa2.estadoCivil = 'Solteiro';

  Pessoa pessoa3 = Pessoa();
  pessoa3.nome = 'Manuela Gomes';
  pessoa3.idade = 34;
  pessoa3.estadoCivil = null;

  pessoa1.mostrar();
  pessoa2.mostrar();
  pessoa3.mostrar(); 
}
