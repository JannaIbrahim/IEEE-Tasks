import 'dart:core';

void main() {
  print('Monkey:');
  print('T - T => ' + monkeyTrouble(true, true).toString());
  print('T - F => ' + monkeyTrouble(true, false).toString());
  print('F - T => ' + monkeyTrouble(false, true).toString());
  print('F - F => ' + monkeyTrouble(false, false).toString());

  print('Parrot:');
  print('T - 6 => ' + parrotTrouble(true, 6).toString());
  print('T - 7 => ' + parrotTrouble(true, 7).toString());
  print('F - 6 => ' + parrotTrouble(false, 6).toString());

  print('Makes10:');
  print('9 - 10 => ' + makes10(9, 10).toString());
  print('9 - 9 => ' + makes10(9, 9).toString());
  print('9 - 1 => ' + makes10(9, 1).toString());

  print('Icy Hot:');
  print('120 - -1 => ' + icyHot(120, -1).toString());
  print('-1 - 120 => ' + icyHot(-1, 120).toString());
  print('2 - 120 => ' + icyHot(2, 120).toString());

  print('Sum Double:');
  print('1 - 2 => ' + sumDouble(1, 2).toString());
  print('3 - 2 => ' + sumDouble(3, 2).toString());
  print('2 - 2 => ' + sumDouble(2, 2).toString());

  print('Diff 21:');
  print('19 => ' + diff21(19).toString());
  print('10 => ' + diff21(10).toString());
  print('21 => ' + diff21(21).toString());
  print('30 => ' + diff21(30).toString());

  print('Sleep In:');
  print('F - F => ' + sleepIn(false, false).toString());
  print('T - F => ' + sleepIn(true, false).toString());
  print('F - T => ' + sleepIn(false, true).toString());

  print('Pos Neg:');
  print('1 - -1 - F => ' + posNeg(1, -1, false).toString());
  print('-1 - 1 - F => ' + posNeg(-1, 1, false).toString());
  print('-4 - -5 - T => ' + posNeg(-4, -5, true).toString());

  print('Close10:');
  print('8 - 13 => ' + close10(8, 13).toString());
  print('13 - 8 => ' + close10(13, 8).toString());
  print('13 - 7 => ' + close10(13, 7).toString());
}

bool monkeyTrouble(aSmile, bSmile) {
  if (aSmile && bSmile || (!aSmile) && (!bSmile)) return true;
  return false;
}

var makes10 =
    (a, b) => {if (a == 10 || b == 10 || a + b == 10) true else false};

bool parrotTrouble(talk, hour) {
  if (talk && (hour > 20 || hour < 7)) return true;
  return false;
}

bool icyHot(t1, t2) {
  if ((t1 > 100 && t2 < 0) || (t1 < 0 && t2 > 100)) return true;
  return false;
}

sumDouble(a, b) {
  if (a == b) return (a + b) * 2;
  return a + b;
}

diff21(n) {
  if (n > 21) return (n - 21) * 2;
  return 21 - n;
}

sleepIn(weekday, vacation) {
  return (!weekday || vacation);
}

posNeg(x, y, negative) {
  if (negative) return (x < 0 && y < 0);
  return ((x > 0 && y < 0) || (x < 0 && y > 0));
}

close10(x, y) {
  var xd = (x - 10).abs();
  var yd = (y - 10).abs();

  if (xd == yd) return 0;
  return xd < yd ? x : y;
}
