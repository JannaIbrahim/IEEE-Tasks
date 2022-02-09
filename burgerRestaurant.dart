import 'dart:io';

// Public
//    Aditions
static final allAdditions = [
  'Cheese',
  'Onion',
  'Tomato',
  'Lettuce',
  'Drink',
  'Chips',
  'Fries',
  'Mushroom',
  'Eggs',
  'Jalapeno'
];
var meat = ['Beef', 'Chicken'];

public var bread = ['White', 'Brown'];

//*************Burger Class************************/
class Burger {
//    Class Data
  String name;
  String meatType;
  String breadType;
  double price;
  var additions = new List.filled(4, '');
  int additionsNum = 0;

//    Constructors

  Burger(String name, String meatType, String breadType) {
    this.name = name;
    this.meatType = meatType;
    this.breadType = breadType;
    this.price = 40;
  }

//    Getters
  String get b_Name {
    return name;
  }

  String get b_MeatType {
    return meatType;
  }

  String get b_BreadType {
    return breadType;
  }

  double get b_Price {
    return price;
  }

  String get b_Additions {
    String s = '';
    for (int i = 0; i < additionsNum; i++) {
      s += (i + 1).toString() + '- ' + additions[i].toString() + '\n';
    }
    return s;
  }

//    Setters
  void setName(String name) {
    this.name = name;
  }

  void setMeatType(String meatType) {
    this.meatType = meatType;
  }

  void setBreadType(String breadType) {
    this.breadType = breadType;
  }

  void addAddition(String addition) {
    this.additions[additionsNum] = addition;
    additionsNum++;
    addPrice(addition);
  }

  String get burger {
    return 'Burger:\n' +
        'Name:' +
        name +
        '\n' +
        'Meat Type: ' +
        meatType +
        '\n' +
        'Bread Type: ' +
        breadType +
        '\n' +
        'Price: ' +
        price.toString() +
        '\n' +
        'Additions:\n' +
        this.b_Additions();
  }

//    Aditional methodes
  void addPrice(String addition) {
    switch (addition) {
      case 'Cheese':
        this.price += 5;
        break;
      case 'Onion':
        this.price += 2;
        break;
      case 'Tomato':
        this.price += 2;
        break;
      case 'Lettuce':
        this.price += 2;
        break;
      case 'Drink':
        this.price += 5;
        break;
      case 'Chips':
        this.price += 15;
        break;
      case 'Fries':
        this.price += 15;
        break;
      case 'Mushroom':
        this.price += 3;
        break;
      case 'Eggs':
        this.price += 4;
        break;
      case 'Jalapeno':
        this.price += 3;
        break;
    }
  }
}

// *******************Deluxe Burger***************
class DeluxeBurger extends Burger {
  DeluxeBurger() : super("Deluxe", meat[0], bread[0]) {
    this.addAddition(allAdditions[5]);
    this.addAddition(allAdditions[4]);
  }
}

// ************************************************

// **************Healthy Burger*******************
class HealthyBurger extends Burger {
  HealthyBurger(String meatType) : super("Healthy", meatType, bread[1]) {}

  var additions = List.filled(2, '');
}

// ***********************************************

//**************Main Function********************* */

void main() {
  print('Welcome to our Wonderful Restaurant XD');

//        Burger Tyoe
  print('Please enter your burger Type:\n' +
      '1- Normal\n' +
      '2- Healthy\n' +
      '3- Deluxe');
  int x = int.parse(stdin.readLineSync()!);

//        Normal Burger
  if (x == 1) {
//            defining the burger data meat, bread , additions
    int m, b, n;
    String meat, bread;
    print('Please enter your type of meat:\n' + '0- beef\n' + '1- Chicken');
    m = int.parse(stdin.readLineSync()!);

    print('Please enter your type of bread:\n' + '0- White \n' + '1- Brown');
    b = int.parse(stdin.readLineSync()!);

//          creating the burger object
    Burger o = new Burger('Normal', meat[m], bread[b]);

//           numbers of additions
    do {
      print(
          'Please enter your number of additions \'Make sure it is 4 Maximum\':');
      n = int.parse(stdin.readLineSync()!);
    } while (n < 0 || n > 4);

//            Additions Menue
    print('Additions Menue:');
    for (int i = 0; i < allAdditions.length; i++) {
      print(i.toString()+ '- ' + allAdditions[i]);
    }

//            Input the Additions
    for (int j = 0; j < n; j++) {
      print('Please enter your addition (' + (j + 1).toString() + ') number:');
      int a = int.parse(stdin.readLineSync()!);
      o.addAddition(allAdditions[a]);
    }

    print('Your order:');
    print(o);

//            Healthy Burger
  } else if (x == 2) {
//            defining the burger data meat, bread , additions
    int m, n;
    String meat, bread;
    print('Please enter your type of meat:\n' + '0- beef\n' + '1- Chicken');
    m = int.parse(stdin.readLineSync()!);

//          creating the burger object
    HealthyBurger o = new HealthyBurger(meat[m]);

//           numbers of additions
    do {
      print(
          'Please enter your number of additions \'Make sure it is 2 Maximum\':');
      n = int.parse(stdin.readLineSync()!);
    } while (n < 0 || n > 2);

//            Additions Menue
    print('Additions Menue:');
    for (int i = 0; i < allAdditions.length; i++) {
      print(i.toString() + '- ' + allAdditions[i]);
    }

//            Input the Additions
    for (int j = 0; j < n; j++) {
      print('Please enter your addition (' + (j + 1).toString() + ') number:');
      int a = int.parse(stdin.readLineSync()!);
      o.addAddition(allAdditions[a]);
    }

    print('Your order:');
    print(o);

//            Deluxe Burger
  } else if (x == 3) {
//
//          creating the burger object
    DeluxeBurger o = new DeluxeBurger();

//            Printing the order
    print('Your order:');
    print(o.burger());
  }
}
