import 'dart:ffi';

void main() {
  String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") print("Test 2 Again");

  bool test1 = true;
  if (test1) {
    print("kebenaran");
  }
}
