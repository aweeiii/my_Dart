//库和导库

//使用库
//import 'dart:html';
//import 'package:test/test.dart';

//指定库前缀
/*
import 'package:lib1/lib1.dart';
import 'package:lib2/lib2.dart' as lib2;

Element element1 = Element();

lib2.Element element2 = lib2.Element();
*/

//仅导入库的一部分
/*
// Import only foo.
import 'package:lib1/lib1.dart' show foo;

// Import all names EXCEPT foo.
import 'package:lib2/lib2.dart' hide foo;
*/

//延迟加载库
//import 'package:greetings/hello.dart' deferred as hello;
//调用
/*
Future<void> greet() async {
  await hello.loadLibrary();
  hello.printGreeting();
}
*/

//指令library
/*
@TestOn('browser')
library;
*/