//get item from both list which not available in both
void main() {
  List a = [1, 3, 5, 7, 9, 3, 5];
  List b = [1, 6, 9, 3, 7, 7, 8, 10, 16];
  List c = [];

  for (var i in a) {
    if (!b.contains(i)) {
      if (!c.contains(i)) {
        c.add(i);
      }
    }
  }

  for (var j in b) {
    if (!a.contains(j)) {
      if (!c.contains(j)) {
        c.add(j);
      }
    }
  }
  print(c);
}

//output: [5, 6, 8, 10, 16]