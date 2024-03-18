void main() {
  var max;
  int a = 32;
  int b = 12;
  int c = 64;

  if (a > b) {
    max = a;
  } else {
    max = b;
  }

  if (c > max) {
    max = c;
  }
  print(max);
}
