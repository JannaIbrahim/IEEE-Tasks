import 'dart:ffi';

class Student {
  var name = 'Nemo';
  var surName = 'Marlin';
  var age = 7;

  void set_name(n) {
    this.name = n;
  }

  void get_name() {
    print(this.name);
  }

  void set_surName(n) {
    this.surName = n;
  }

  void get_surName() {
    print(this.surName);
  }

  void set_age(a) {
    this.age = a;
  }

  void get_age() {
    print(this.age);
  }

  Student() {
    print('Name: $name');
    print('SurName: $surName');
    print('Age: $age');
  }
}

void main() {
  var s = Student();

  var s2 = Student()
    ..name = 'Squirt'
    ..set_surName('Cursh')
    ..set_age(8);

  s2.get_name();
  s2.get_surName();
  s2.get_age();
}
