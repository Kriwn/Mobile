import 'dart:math';
import 'dart:io';

int game(int num) {
  int? input = int.parse(stdin.readLineSync()!);
  var count = 1;
  while (input! != num) {
    count += 1;
    if (input < num) {
      print("too low");
    } else if (input > num) {
      print("too high");
    }
    input = int.parse(stdin.readLineSync()!);
  }
  print("exactly right");
  return count;
}

void main() {
  int num = 1;
  int MAX = 2;
  Random rnd = new Random();
  num += rnd.nextInt(MAX);
  print(game(num));
}

