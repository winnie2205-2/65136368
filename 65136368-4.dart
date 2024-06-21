int factorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

void main() {
  int n = 9; 
  int result = factorial(n);
  print("The factorial of $n is: $result");
}