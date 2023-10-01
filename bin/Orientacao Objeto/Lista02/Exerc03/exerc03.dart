/* 3. Crie um construtor na classe Veiculo para o seguinte código:
Veiculo('Fiat', 'Palio', 2013, 2013); */

class Veiculo {
  String? _marca;
  String? _modelo;
  int? _anoModelo;
  int? _anoFabricacao;
  
  Veiculo(String marca, String modelo, int anoModelo, int anoFabricacao) {
    this._marca = marca;
    this._modelo = modelo;
    this._anoModelo = anoModelo;
    this._anoFabricacao = anoFabricacao;
    //questionar os this
  }
}

void main() {
  Veiculo v = Veiculo('Fiat', 'Palio', 2013, 2013);
}
