

void main() {

double valor = 1.59;

// quantidade de números na string
print(valor.toStringAsPrecision(1)); // 2
print(valor.toStringAsPrecision(2)); // 1.6
print(valor.toStringAsPrecision(3)); // 1.59
print(valor.toStringAsPrecision(4)); // 1.590

// quantidade de casas decimais
print(valor.toStringAsFixed(1)); // 1.6
print(valor.toStringAsFixed(2)); // 1.59
print(valor.toStringAsFixed(3)); // 1.590
print(valor.toStringAsFixed(4)); // 1.5900

}