late String expensiveCalculation;

void main() {
  // Late variable hanya diinisialisasi ketika pertama kali diakses
  expensiveCalculation = calculateSomething();
  print(expensiveCalculation);
}

String calculateSomething() {
  print("Calculating...");
  return "Result of expensive calculation";
}