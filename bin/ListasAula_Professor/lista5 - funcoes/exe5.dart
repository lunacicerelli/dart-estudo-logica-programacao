/*5. Faça uma função para calcular o diâmetro de um círculo, ele deve receber por
parâmetro o raio do círculo e retornar o diâmetro calculado.

*/


void main() {
  double diametro = calculaDiametro(10);
  print(diametro);
}

double calculaDiametro(double raio){
  return raio * 2;
}