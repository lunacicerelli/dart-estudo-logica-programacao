
class Veiculo {

  String? marca;
  String? modelo;
  int? anoModelo;
  int? anoFabicacao;
  String? tipoCombustivel;

  Veiculo({this.marca, this.modelo, this.anoModelo, this.anoFabicacao, this.tipoCombustivel});

  Veiculo.gasolina({this.marca, this.modelo, this.anoModelo, this.anoFabicacao}){
    tipoCombustivel = "gasolina";
  }

  Veiculo.flex({this.marca, this.modelo, this.anoModelo, this.anoFabicacao}){
    tipoCombustivel = "flex";
  }

  Veiculo.diesel({this.marca, this.modelo, this.anoModelo, this.anoFabicacao}){
    tipoCombustivel = "diesel";
  }

  // Veiculo(this._marca, this._modelo, this._anoModelo, this._anoFabicacao);

  // set marca(String? marca){
  //   _marca = marca;
  // }

  // String? get marca {
  //   return _marca;
  // }

  // set modelo(String? modelo){
  //   _modelo = modelo;
  // }

  // String? get modelo {
  //   return _modelo;
  // }

  // set anoModelo(int? anoModelo){
  //   _anoModelo = anoModelo;
  // }

  // int? get anoModelo {
  //   return _anoModelo;
  // }

  // set anoFabicacao(int? anoFabicacao){
  //   _anoFabicacao = anoFabicacao;
  // }

  // int? get anoFabicacao {
  //   return _anoFabicacao;
  // }

  @override
  String toString() {
    return 'marca=$marca, modelo=$modelo, anoModelo=$anoModelo, anoFacricacao=$anoFabicacao, tipoConbustivel=$tipoCombustivel';
  }
}