import 'dart:math';
import 'dart:io';

void main() {
  // *******************Rock, Paper, Sessiors Game
  // In this game Rock is represented by 0, Paper by 1 and Sessiors by 2

  // Random r = new Random();
  // int c = r.nextInt(3);
  // print(
  //     'Please enter: \n -\"0\" for Rock \n -\"1\" for Paper \n -\"2\" for Sessiors');
  // var ps = stdin.readLineSync();
  // int p = int.parse(ps!);

  // print('Computer chose: $c');
  // if (c == p) {
  //   print('It\'s a Tie');
  // } else if (p == 0) {
  //   switch (c) {
  //     case 1:
  //       print('You Lost');
  //       break;
  //     case 2:
  //       print('You Won');
  //       break;
  //     default:
  //       print('Undefined Please try again');
  //   }
  // } else if (p == 1) {
  //   switch (c) {
  //     case 2:
  //       print('You Lost');
  //       break;
  //     case 0:
  //       print('You Won');
  //       break;
  //     default:
  //       print('Undefined Please try again');
  //   }
  // } else if (p == 2) {
  //   switch (c) {
  //     case 0:
  //       print('You Lost');
  //       break;
  //     case 1:
  //       print('You Won');
  //       break;
  //     default:
  //       print('Undefined Please try again');
  //   }
  // }

  // ********************* Palindrome String problem

  print('Please enter a String:');
  var s = stdin.readLineSync();

  var ns = s!.split('').reversed.join('');

  if (s == ns) {
    print('The String is Palindrome');
  } else {
    print('The String is not Palindrome');
  }

//List<String> sl = s!.split('');
  // for (int i = sl.length; i >= 0; i--) {
  //   ns += sl[i];
  //   sl.removeLast();
  // }
  // *********************Prime numbers check

  // print('Please Enter a number: ');
  // var numIn = stdin.readLineSync();
  // int num = int.parse(numIn!);
  // var i = 0;
  // for (i = num - 1; i > 1; i--) {
  //   if (num % i == 0) break;
  // }
  // if (i == 1)
  //   print('Your number is Prime');
  // else
  //   print('Your number is not Prime');
}
