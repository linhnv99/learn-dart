import 'class_private.dart';

class Person {
  int id;
  String name;

  Person(this.id, this.name);

  get getId {
    this.id;
  }

  get getName {
    return this.name;
  }

  set setName(name) {
    this.name = name;
  }

  @override
  String toString() {
    return this.id.toString() + " - " + this.name;
  }
}

class Parent {
  var name;

  Parent(this.name);

  get getName {
    return this.name;
  }

  void sayHi() {
    print("Hi ${this.name}");
  }
}

class Children extends Parent {
  var age;

  Children(name, age) : super(name) {
    this.age = age;
  }

  @override
  void sayHi() {
    print("Hi children ${super.getName}");
    super.sayHi();
  }
}

/** 
  *Convert int  to String 
    + "$intValue"
    + int.parse(value)

*/

void main(List<String> args) {
  Person person = new Person(1, "Linh");

  //set
  person.setName = "TEST";

  // get
  var name = person.getName;

  // print(person);

  // print("$person.getId" is String);

  var children = new Children("Lan", 12);
  children.sayHi();

  // private

  Cat c = new Cat("CAB");
  //c._name; // error
  print(c.getName);
}
