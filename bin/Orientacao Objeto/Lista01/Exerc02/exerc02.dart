/*2. A partir do exercício anterior, no main crie 3 objetos pessoa contendo as seguintes
informações

                  Pessoa 1          Pessoa 2          Pessoa 3
nome              Maria Silva       João Pereira      Manuela Gomes
idade             19                50                34
Estado civil      Casada            Solteiro          nulo
*/

import './../Exerc01/pessoa.dart';

void main() {
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
  pessoa3.estadoCivil = null; //como ela é nula, nem precisaria declarar 
}
