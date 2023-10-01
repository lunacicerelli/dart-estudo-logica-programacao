/*2. No main, crie o objeto Estoque contendo os seguintes veículos:

Marca       Modelo       anoFab       anoMod       cor
Volkswagem  Fusca         1979        1980         Azul
Fiat        Uno           2000        2000         Cinza
Ford        Ka            2005        2006         Vermelho
Chevrolet   Kadet         1995        1996         Preto
*/

import 'exe1.dart';

void main() {
  Estoque estoque = Estoque();

  Marca marca1 = Marca();
  marca1.nome = 'Volkswagem';
  Modelo modelo1 = Modelo();
  modelo1.nome = 'Fusca';
  Veiculo veiculo1 = Veiculo();
  veiculo1.anoFab = '1979';
  veiculo1.anoMod = '1980';
  veiculo1.cor = 'Azul';
  veiculo1.marca = marca1;
  veiculo1.modelo = modelo1;

  estoque.adicionarVeiculo(veiculo1);

  Marca marca2 = Marca();
  marca2.nome = 'Fiat';
  Modelo modelo2 = Modelo();
  modelo2.nome = 'Uno';
  Veiculo veiculo2 = Veiculo();
  veiculo2.anoFab = '2000';
  veiculo2.anoMod = '2000';
  veiculo2.cor = 'Cinza';
  veiculo2.marca = marca2;
  veiculo2.modelo = modelo2;

  estoque.adicionarVeiculo(veiculo2);

  adicionarVeiculoAoEstoque(estoque, 'Fiat', 'Uno', '2000', '2000', 'Cinza');
  adicionarVeiculoAoEstoque(estoque, 'Chevrolet', 'Kadet', '1995', '1996', 'Preto');
}

void adicionarVeiculoAoEstoque(Estoque estoque, String marcaString, String modeloString, String anoFab, String anoMod, String cor) {
  Marca marca = Marca();
  marca.nome = marcaString;
  Modelo modelo = Modelo();
  modelo.nome = modeloString;
  Veiculo veiculo = Veiculo();
  veiculo.anoFab = anoFab;
  veiculo.anoMod = anoMod;
  veiculo.cor = cor;
  veiculo.marca = marca;
  veiculo.modelo = modelo;

  estoque.adicionarVeiculo(veiculo);
}
