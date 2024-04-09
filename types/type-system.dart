//Dart语言里的类型体系
/*
void printInts(List<int> a) => print(a);

void main() {
  final list = [];
  list.add(1);
  list.add('2');
  printInts(list);
}

void printInts(List<int> a) => print(a);

void main() {
  final list = <int>[];
  list.add(1);
  list.add(2);
  printInts(list);
}
*/

//类型安全
/*
class Animal {
  void chase(Animal a) { ... }
  Animal get parent => ...
}
class HoneyBadger extends Animal {
  @override
  void chase(Animal a) { ... }

  @override
  HoneyBadger get parent => ...
}
class HoneyBadger extends Animal {
  @override
  void chase(Animal a) { ... }

  @override
  Root get parent => ...
}
class Animal {
  void chase(Animal a) { ... }
  Animal get paren
  t => ...
}
class HoneyBadger extends Animal {
  @override
  void chase(Object a) { ... }

  @override
  Animal get parent => ...
}
class Mouse extends Animal { ... }

class Cat extends Animal {
  @override
  void chase(Mouse a) { ... }
}
Animal a = Cat();
a.chase(Alligator()); // Not type safe or feline safe.
void main() {
  List<Cat> foo = <dynamic>[Dog()]; // Error
  List<dynamic> bar = <dynamic>[Dog(), Cat()]; // OK
}
*/

//运行时检查
/*
void main() {
  List<Animal> animals = <Dog>[Dog()];
  List<Cat> cats = animals as List<Cat>;
}
*/

//类型推断
/*
Map<String, dynamic> arguments = {'argA': 'hello', 'argB': 42};

var arguments = {'argA': 'hello', 'argB': 42}; // Map<String, Object>

var x = 3; // x is inferred as an int.
x = 4.0;

num y = 3; // A num can be double or int.
y = 4.0;

// Inferred as if you wrote <int>[].
List<int> listOfInt = [];

// Inferred as if you wrote <double>[3.0].
var listOfDouble = [3.0];

// Inferred as Iterable<int>.
var ints = listOfDouble.map((x) => x.toInt());
*/

//替换类型
/*
Cat c = Cat();

Animal c = Cat();

MaineCoon c = Cat();

Cat c = MaineCoon();

List<MaineCoon> myMaineCoons = ...
List<Cat> myCats = myMaineCoons;

List<Animal> myAnimals = ...
List<Cat> myCats = myAnimals;

List<Animal> myAnimals = ...
List<Cat> myCats = myAnimals as List<Cat>;
*/