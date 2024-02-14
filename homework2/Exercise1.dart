int check(int? age) => age ?? 0;

void main() {
  int? age = 2;
  print(check(age));
  print(age);
}
