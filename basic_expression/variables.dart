//var name='Bob';

//Object name ='Bob'; 不受限于单一类型

//String name='Bob';  显示声明类型

//空安全

//可以为空，后面加问号 String?name 默认为null

//不可以为空 String name  强制设置初始值

//默认值

// int? lineCount;
//assert(lineCount==null)

//int lineCount=0;

/*int lineCount;

if (weLikeToCount) {
  lineCount = countLines();
} else {
  lineCount = 0;
}

print(lineCount);
*/

//延迟初始化变量

/*
late String description;

void main() {
  description = 'Feijoada!';  若没有初始化一个late变量，那么当变量被使用时会发生运行错误
  print(description);
}
*/

//late String temperature = readThermometer();

//终值（final）和常量（const）
//实例变量可以是final但不能是const

//final name = 'Bob'; // Without a type annotation
//final String nickname = 'Bobby';

//不能修改final变量的值

//请使用const修饰编译时常量的变量

//静态常量 static const

//const bar = 1000000; // Unit of pressure (dynes/cm2)
//const double atm = 1.01325 * bar; // Standard atmosphere

//const关键字不仅仅可用于声明常量，还可以使用它来创建常量值（values），以及声明创建常量值的构造函数

//var foo = const [];
//final bar = const [];
//const baz = []; 

//可以修改const变量，但不能修饰const变量的值
//foo = [1, 2, 3]; 
//baz = [42]; 报错
/*
const Object i = 3; 
const list = [i as int]; 
const map = {if (i is int) i: 'int'};
const set = {if (list is List<int>) ...list}; */