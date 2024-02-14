enum Operation { puls, minus, mutiply, divide }

void main() {
  const a = 4;
  const b = 2;
  const op = Operation.puls;

  switch (op) {
    case Operation.puls:
      print("${a + b}");
      break;
    case Operation.minus:
      print("${a - b}");
      break;
    case Operation.mutiply:
      print("${a * b}");
      break;
    case Operation.divide:
      print("${a / b}");
      break;
  }
}
