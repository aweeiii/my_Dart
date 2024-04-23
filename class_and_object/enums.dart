//枚举类型

//声明简单枚举
enum Color { red, green, blue }

//声明增强型枚举
/*
Dart 还允许枚举声明来声明类 具有字段、方法和 const 构造函数 它们仅限于固定数量的已知常量实例。
要声明增强的枚举， 遵循类似于普通类的语法， 但有一些额外的要求：
1、实例变量必须是 ， 包括 mixins 添加的那些。final
2、所有生成构造函数都必须是常量的。
3、工厂构造函数只能返回 一个固定的已知枚举实例。
4、由于 Enum 是自动扩展的，因此无法扩展其他类。
5、不能覆盖 、 等式运算符。indexhashCode==
6、不能在枚举中声明已命名的成员， 因为它会与自动生成的静态 getter 冲突。valuesvalues
7、必须声明枚举的所有实例 在宣言的开头， 并且必须至少声明一个实例。
8、增强枚举中的实例方法可用于 引用当前枚举值。this
*/
enum Vehicle implements Comparable<Vehicle> {
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),
  bus(tires: 6, passengers: 50, carbonPerKilometer: 800),
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0);

  const Vehicle({
    required this.tires,
    required this.passengers,
    required this.carbonPerKilometer,
  });

  final int tires;
  final int passengers;
  final int carbonPerKilometer;

  int get carbonFootprint => (carbonPerKilometer / passengers).round();

  bool get isTwoWheeled => this == Vehicle.bicycle;

  @override
  int compareTo(Vehicle other) => carbonFootprint - other.carbonFootprint;
}

//使用枚举
/*
final favoriteColor = Color.blue;
if (favoriteColor == Color.blue) {
  print('Your favorite color is blue!');
}
*/
/*
assert(Color.red.index == 0);
assert(Color.green.index == 1);
assert(Color.blue.index == 2);
*/
/*
List<Color> colors = Color.values;
assert(colors[2] == Color.blue);
*/
//switch语句中使用枚举
/*
var aColor = Color.blue;

switch (aColor) {
  case Color.red:
    print('Red as roses!');
  case Color.green:
    print('Green as grass!');
  default: // Without this, you see a WARNING.
    print(aColor); // 'Color.blue'
}
*/

//如果需要访问枚举值的名称
//print(Color.blue.name); // 'blue'

//如果需要访问枚举值的成员
//print(Vehicle.car.carbonFootprint);