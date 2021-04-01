  import 'dart:math';

void main() {
  eqsolve(1, 6, 9);
  }

  void eqsolve(num a, num b, num c) {
    num discriminant = cDiscriminant(a, b, c);
    if (discriminant < 0) {
      print('Корней нет');
    }
    if (discriminant > 0) {
      num x1 = cX1(discriminant, a, b, );
      num x2 = cX2(discriminant, a, b, );
      print('x1 = $x1, x2 = $x2');
    }
    if (discriminant == 0) {
      num x = cX(a, b, c);
      print('x1 = $x');
    }
  }
  num cDiscriminant(num a, num b, num c){
    num discriminant = (b * b) - (4 * a * c);
        return discriminant;
  }

  num cX(num a, num b, num c){
    num x = -b / (2 * a);
    return x;
  }

  num cX1(num a, num b, num d){
    num x1 = (-b + sqrt(d)) / (2 * a);
    return x1;
  }

  num cX2(num a, num b, num d){
    num x2 = (-b - sqrt(d)) / (2 * a);
    return x2;
  }
