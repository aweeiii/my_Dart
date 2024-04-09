/*
a++
a + b
a = b
a == b
c ? a : b
a is T
*/

//运算符优先级
//if ((n % i == 0) && (d % i == 0)) ...

//if (n % i == 0 && d % i == 0) ...

//算术运算符
/*
assert(2 + 3 == 5);
assert(2 - 3 == -1);
assert(2 * 3 == 6);
assert(5 / 2 == 2.5); // 双精度浮点型
assert(5 ~/ 2 == 2); // 整型
assert(5 % 2 == 1); // 余数

assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');
*/

//前缀和后缀递增和递减操作符
/*
int a;
int b;

a = 0;
b = ++a; 
assert(a == b); // 1 == 1

a = 0;
b = a++; 
assert(a != b); // 1 != 0

a = 0;
b = --a; 
assert(a == b); // -1 == -1

a = 0;
b = a--; 
assert(a != b); // -1 != 0
*/

//相等运算符和关系运算符
/*
assert(2 == 2);
assert(2 != 3);
assert(3 > 2);
assert(2 < 3);
assert(3 >= 3);
assert(2 <= 3);
*/

//类型试验运算符

//as is is!
//(employee as Person).firstName = 'Bob';
/*
if (employee is Person) {
  // Type check
  employee.firstName = 'Bob';
}
*/

//赋值运算符
//a = value;
//b ??= value;
/*
var a = 2; 
a *= 3; 
assert(a == 6);
*/

//逻辑运算符
//！expr || &&
/*
if (!done && (col == 0 || col == 3)) {
  .....
}
*/

//按位和移位运算符
/*
final value = 0x22;
final bitmask = 0x0f;

assert((value & bitmask) == 0x02); // AND
assert((value & ~bitmask) == 0x20); // AND NOT
assert((value | bitmask) == 0x2f); // OR
assert((value ^ bitmask) == 0x2d); // XOR

assert((value << 4) == 0x220); // Shift left
assert((value >> 4) == 0x02); // Shift right

// Shift right example that results in different behavior on web
// because the operand value changes when masked to 32 bits:
assert((-value >> 4) == -0x03);

assert((value >>> 4) == 0x02); // Unsigned shift right
assert((-value >>> 4) > 0); // Unsigned shift right
*/

//条件表达式
//var visibility = isPublic ? 'public' : 'private';
//String playerName(String? name) => name ?? 'Guest';
/*
String playerName(String? name) => name != null ? name : 'Guest';
String playerName(String? name) {
  if (name != null) {
    return name;
  } else {
    return 'Guest';
  }
}
*/

//级联表示法
/*var paint = Paint()
  ..color = Colors.black
  ..strokeCap = StrokeCap.round
  ..strokeWidth = 5.0;
*/

/*
var paint = Paint();
paint.color = Colors.black;
paint.strokeCap = StrokeCap.round;
paint.strokeWidth = 5.0;
*/
/*
querySelector('#confirm') 
  ?..text = 'Confirm' 
  ..classes.add('important')
  ..onClick.listen((e) => window.alert('Confirmed!'))
  ..scrollIntoView();
*/
//嵌套级联
/*
final addressBook = (AddressBookBuilder()
      ..name = 'jenny'
      ..email = 'jenny@example.com'
      ..phone = (PhoneNumberBuilder()
            ..number = '415-555-0100'
            ..label = 'home')
          .build())
    .build();
*/
//点差运算符
//Spread
//[...a + b]

//其他运算符
// () [] .... 