import 'dart:io';

import 'dart:math';

void main() {
  hangman();
}

void hangman() {
  // The game dictionary
  var words = [
    'Brazil',
    'Egypt',
    'Canada',
    'Alaska',
    'Argentina',
    'Niger',
    'Mali',
    'Palestine',
    'Kenya',
    'India',
    'China',
    'Japan',
    'Australia',
    'England',
    'Italy',
    'Spain',
    'France',
    'Sweden',
    'Russa',
    'Mexico',
    'Ghana',
    'Indonesia',
    'Madagascar',
    'Turkey',
    'Poland',
    'Peru',
    'Pakistan',
    'Portugal',
    'Chile',
    'Moroco',
    'Libya',
    'Sudan',
    'Tanzania',
    'Malaysia',
    'Singapore',
    'Thailand',
    'Syria',
    'Iraq',
    'Cambodia',
    'Yemen'
  ];
  // Choosing a random word
  Random r = new Random();
  int num = r.nextInt(words.length);
  var word = words[num];

// creating the clue and updating the word and attempts
  List clue = ("___ " * word.length).split(' ');
  var a = 0;
  word = word.toUpperCase();

// Starting the game
  print('Start Guessing for a Country name XD');
  print("You can always write \'EXIT\' to Exit the game");
  print(clue.join(" "));
  // List cc = ("_ " * word.length).split(' ');

// Guessing loop
  while (true) {
    a++;
    var changeFlag = false;

    // Start attempt
    print("Please write your Guess");
    var guess = stdin.readLineSync();
    guess = guess!.toUpperCase();

    if (guess == word) {
      print("Bingo! you got it in $a Attempts");
      break;
    } else if (guess == 'EXIT') {
      print('Bey Bey!');
      break;
    } else if (guess.length > 1)
      print('Try Again ^^');
    else {
      for (int i = 0; i < word.length; i++) {
        if (clue[i] == guess)
          continue;
        else if (word[i] == guess) {
          clue[i] = word[i];
          changeFlag = true;
        }
      }
      if (guess == word) {
        print("Bingo! you got it in $a Attempts");
        break;
      }

      if (changeFlag)
        print('Great!!');
      else
        print('Try Again...');

      print(clue.join(' '));

      if (clue.join('') == word) {
        print("Bingo! you got it in $a Attempts");
        break;
      }
    }
    // copyArray(clue, cc);
  }
}

void copyArray(List a, List b) {
  for (int i = 0; i < a.length; i++) {
    String temp = a[i];
    b[i] = temp;
  }
}

bool checkEquality(List a, List b) {
  bool flag = true;
  for (int i = 0; i < a.length; i++)
    if (a[i] != b[i]) {
      flag = false;
      break;
    }
  return flag;
}
