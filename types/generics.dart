//泛型
/*
var names = <String>[];
names.addAll(['Seth', 'Kathy', 'Lars']);
names.add(42); // Error
*/
/*
abstract class ObjectCache {
  Object getByKey(String key);
  void setByKey(String key, Object value);
}
*/
/*
abstract class StringCache {
  String getByKey(String key);
  void setByKey(String key, String value);
}
*/
/*
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}
*/

//使用集合文本
/*
var names = <String>['Seth', 'Kathy', 'Lars'];
var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'};
var pages = <String, String>{
  'index.html': 'Homepage',
  'robots.txt': 'Hints for web robots',
  'humans.txt': 'We are people, not machines'
};
*/

//将参数化类型与构造函数一起使用’
/*
var nameSet = Set<String>.from(names);
var views = Map<int, View>();
*/

//泛型集合及其包含的类型
/*
var names = <String>[];
names.addAll(['Seth', 'Kathy', 'Lars']);
print(names is List<String>); // true
*/

//限制参数化类型
class Foo<T extends Object> {
  // Any type provided to Foo for T must be non-nullable.
}
/*
class Foo<T extends SomeBaseClass> {
  // Implementation goes here...
  String toString() => "Instance of 'Foo<$T>'";
}

class Extender extends SomeBaseClass {...}

var someBaseClassFoo = Foo<SomeBaseClass>();
var extenderFoo = Foo<Extender>();

var foo = Foo();
print(foo); // Instance of 'Foo<SomeBaseClass>'
var foo = Foo<Object>();
*/

//使用泛型方法
T first<T>(List<T> ts) {
  T tmp = ts[0];
  return tmp;
}