void main() {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  const order = ['margherita', 'pepperoni'];
  double total = 0;
  int count = 0;

  for (var i in order) {
    for (var j in pizzaPrices.keys) {
      if (i == j) {
        total += pizzaPrices[j]!;
        count++;
      }
    }
  }

  if (count == order.length) {
    print("Total: \$${total}");
  } else {
    print("${order[count]} pizza not on the menu");
  }
}
