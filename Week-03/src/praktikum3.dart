void main() {
  for (int index = 10; index < 27; index++) {
    for (int index = 10; index < 27; index++) {
      if (index == 21) {Í
        break;
      } else if (index > 1 && index < 7) {
        continue;
      }
      print(index);
    }
  }
}
