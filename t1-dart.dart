import 'dart:math';

void main() {
  String name = 'Janna';
  var grade = '3';
  int g = int.parse(grade);
  print('I am in grade ${g}');
  g = 5;
  grade = g.toString();
  print('Now I am in grade ' + grade);
  double d = 5.5;
  bool isTrue = true;
  dynamic anyThing = 'Pizza';
  anyThing = 3.5;

  Random r1 = new Random();
  int age = r1.nextInt(30);
  print('Age = ${age}');
  if ((age % 2) == 0) {
    print('Your age is even');
  } else if (age == 7 || age == 21) {
    print('You are Luky xD');
  } else {
    print('Your age is odd');
  }

  switch (age) {
    case 1:
    case 2:
      print('laugh');
      break;
    case 3:
      print('move');
      break;
    case 4:
      print('Jump');
      break;
    case 5:
      print('School time');
      break;
    case 6:
      print('explore');
      break;
    case 7:
      print('pray');
      break;
    default:
      print('Enjoy');
  }
}
