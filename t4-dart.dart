import 'dart:math';

void main() {
  for (int i = 0; i < 10; i++) print('$i! = ' + fact(i).toString());
  rs();
  circle(5);
  circle(5, 10);
}

void circle(r, [d = 0]) {
  print('radious = $r');
  var c = (d != 0) ? (d * pi) : (2 * r * pi);
  print('circomfrence = $c');
  var a = r * r * pi;
  print('area = $a');
}

// recursion
int fact(n) {
  if (n > 1)
    return n * fact(n - 1);
  else
    return 1;
}

// lambda expression
var rs = () => print('Rocketship function');
