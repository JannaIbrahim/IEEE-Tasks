// import 'dart:math';
import 'dart:io';

void main() {
  // Loops
  for (var i = 10; i > 0; i--) {
    print('$i sec');
  }
  print('Gooooo!');
  var i = 0;
  while (i <= 10) {
    print('$i sec');
    i++;
  }
  print('YAY!!!!');

// Nested Loops

  print('Printing the Times Table from 2 to 5:');
  for (var i = 2; i < 6; i++) {
    print('$i Times table:');
    for (var j = 1; j < 13; j++) {
      print('$i x $j = ${i * j}');
    }
  }

  loop:
  while (true) {
    try {
      print('Please enter your Birth year:');
      var birthYear = stdin.readLineSync();
      int age = DateTime.now().year - int.parse(birthYear!);

      print('Your age is $age');
      break loop;
    } on FormatException {
      print('Wrong Input please try again');
    }
  }
}
