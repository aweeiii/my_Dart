//扩展方法

//概述
//int.parse('42')
//'42'.parseInt()
/*
import 'string_apis.dart';
// ···
print('42'.parseInt()); // Use an extension method.
*/

/*
extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
  // ···
}
*/

//使用扩展方法
/*
// Import a library that contains an extension on String.
import 'string_apis.dart';
// ···
print('42'.padLeft(5)); // Use a String method.
print('42'.parseInt()); // Use an extension method.
*/

//静态类型和动态类型
/*
dynamic d = '2';
print(d.parseInt()); // Runtime exception: NoSuchMethodError
*/
/*
var v = '2';
print(v.parseInt()); // Output: 2
*/

//API冲突
/*
// Defines the String extension method parseInt().
import 'string_apis.dart';

// Also defines parseInt(), but hiding NumberParsing2
// hides that extension method.
import 'string_apis_2.dart' hide NumberParsing2;

// ···
// Uses the parseInt() defined in 'string_apis.dart'.
print('42'.parseInt());
*/

/*
// Both libraries define extensions on String that contain parseInt(),
// and the extensions have different names.
import 'string_apis.dart'; // Contains NumberParsing extension.
import 'string_apis_2.dart'; // Contains NumberParsing2 extension.

// ···
// print('42'.parseInt()); // Doesn't work.
print(NumberParsing('42').parseInt());
print(NumberParsing2('42').parseInt());
*/

/*
// Both libraries define extensions named NumberParsing
// that contain the extension method parseInt(). One NumberParsing
// extension (in 'string_apis_3.dart') also defines parseNum().
import 'string_apis.dart';
import 'string_apis_3.dart' as rad;

// ···
// print('42'.parseInt()); // Doesn't work.

// Use the ParseNumbers extension from string_apis.dart.
print(NumberParsing('42').parseInt());

// Use the ParseNumbers extension from string_apis_3.dart.
print(rad.NumberParsing('42').parseInt());

// Only string_apis_3.dart has parseNum().
print('42'.parseNum());
*/

//实现扩展方法
/*
extension <extension name>? on <type> {
  (<member definition>)*
}
*/

/*
extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }

  double parseDouble() {
    return double.parse(this);
  }
}
*/

//未命名的扩展
/*
extension on String {
  bool get isBlank => trim().isEmpty;
}
*/

//实现泛型扩展
/*
extension MyFancyList<T> on List<T> {
  int get doubleLength => length * 2;
  List<T> operator -() => reversed.toList();
  List<List<T>> split(int at) => [sublist(0, at), sublist(at)];
}
*/