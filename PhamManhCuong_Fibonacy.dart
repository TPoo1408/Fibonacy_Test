
// README: How to run
// 1. Open terminal
// 2. Run command: dart run PhamManhCuong_Fibonacy.dart


import 'dart:io';

void main() {

  // Input a variable
  print("Input a: ");
  int? a = int.tryParse(stdin.readLineSync()!);

  // Check a variable is valid
  if (a == null) {
    print("Please input a valid integer number.");
    return;
  }

  if (a < 0) {
    print("a must be greater than or equal to 0.");
    return;
  }

  // Input b variable
  print("Input b: ");
  int? b = int.tryParse(stdin.readLineSync()!);

  // Check b variable is valid
  if (b == null) {
    print("Please input a valid integer number.");
    return;
  }

  if (b < 0) {
    print("b must be greater than or equal to 0.");
    return;
  }

  // Check a > b condition
  if (a > b) {
    print("a must be less than or equal to b.");
    return;
  }

  // Print sum of Fibonacci numbers from a to b
  int sum = fibonacciSum(a, b);
  print("Sum of Fibonacci numbers from $a to $b is: $sum.");
  
}

// Sum of Fibonacci numbers from a to b
int fibonacciSum(int a, int b) {
  int sum = 0;
  for (int i = a; i <= b; i++) {
    sum += fibonacci(i);
  }

  return sum;
}

// Fibonacci function
int fibonacci(int n) {
  if (n == 0) return 0;
  if (n == 1) return 1;

  return fibonacci(n - 1) + fibonacci(n - 2);
}
