import 'dart:math';

double triangleArea(double sideA, double sideB, double sideC) {
  if (sideA <= 0 || sideB <= 0 || sideC <= 0) {
    return double.nan; 
  }
  
  if ((sideA + sideB <= sideC) || (sideA + sideC <= sideB) || (sideB + sideC <= sideA)) {
    return double.nan;
  }
  
  double semiPerimeter = (sideA + sideB + sideC) / 2;
  double area = sqrt(semiPerimeter * (semiPerimeter - sideA) * (semiPerimeter - sideB) * (semiPerimeter - sideC));
  
  return area;
}

void main() {
  double sideA = 8;
  double sideB = 5;
  double sideC = 9;
  
  double area = triangleArea(sideA, sideB, sideC);
  if (!area.isNaN) {
    print("Area of the triangle: $area");
  } else {
    print("Error: Invalid triangle dimensions.");
  }
}
