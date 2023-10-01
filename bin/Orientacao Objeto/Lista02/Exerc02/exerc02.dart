/*2. No main, crie os seguintes objetos:

                     veiculo1       veiculo2       veiculo3
Marca                Volkswagem     Toyota         Fiat
Modelo               Fusca          Bandeirantes   Uno       
Ano Modelo           1980           1968           2000
Ano Fabricação       1979           1967           1999 

Crie o método toString na classe Veiculo e realize o print dos objetos criados.
(o método será criado dentro da classe)
*/


import '../Exerc02/classVeiculo.dart';

void main() {

  Veiculo veiculo1 = Veiculo();
  veiculo1.marca = 'Volkswagem';
  veiculo1.modelo = 'Fusca';
  veiculo1.anoModelo = 1980;
  veiculo1.anoFabricacao = 1979;

  Veiculo veiculo2 = Veiculo();
  veiculo2.marca = 'Toyota';
  veiculo2.modelo = 'Bandeirantes';
  veiculo2.anoModelo = 1968;
  veiculo2.anoFabricacao = 1967;

  Veiculo veiculo3 = Veiculo();
  veiculo3.marca = 'Fiat';
  veiculo3.modelo = 'Uno';
  veiculo3.anoModelo = 2000;
  veiculo3.anoFabricacao = 1999;

  print(veiculo1);
  print(veiculo2);
  print(veiculo3);
}






