import 'dart:io';

void main() {
  int counter = 0;
  // while (counter < 33) {
  //   print(counter);
  //   counter++;
  // }

  do {
    stdout.write('$counter ');
    counter++;
  } while (counter < 77);
}
