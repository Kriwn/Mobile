import 'dart:io';

mixin Walker {
  void walk() => print("Walk");
}

mixin Runner {
  void run() => print("Run");
}

class Athlete with Walker, Runner {
  void workout() {
    walk();
    sleep(Duration(seconds: 3));
    run();
    sleep(Duration(seconds: 3));
    walk();
  }
}

void main() {
  Athlete Ter = new Athlete();
  Ter.workout();
}
