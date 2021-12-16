import 'dart:io';

import 'practice.dart';

void main() {
  var s = 'STARING';
  print(s);

  if (s.contains('A')) s = s.replaceAll('A', "");
  print(s);
  s = s.replaceAll('R', "");
  print(s);
  print(s.replaceFirst('T', ""));
  Set x = {5, 6, 0, 7, 8, 9};
  x.forEach((element) {
    print(element);
  });
  x.clear();
  print(x);
  Map m = {10: 'Hi', 101: 'Hello', 111: 'Hola'};
  print(m.values);
  print(m[101]);
  print(m.entries);

  print(laugh(7));
}

String laugh(int num) {
  var l = '';
  for (int i = 0; i < num; i++) l += 'Ha';
  return (l + '!');
}
