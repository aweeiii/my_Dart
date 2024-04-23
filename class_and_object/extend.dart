//扩展类
/*
class Television {
  void turnOn() {
    _illuminateDisplay();
    _activateIrSensor();
  }
  // ···
}

class SmartTelevision extends Television {
  void turnOn() {
    super.turnOn();
    _bootNetworkInterface();
    _initializeMemory();
    _upgradeApps();
  }
  // ···
}
*/

//覆盖成员
/*
重写方法声明必须匹配 它以多种方式重写的方法（或方法）：
1、返回类型必须与（或子类型）相同 重写的方法的返回类型。
2、参数类型必须与（或超类型）相同 重写的方法的参数类型。 在前面的示例中，setter 将参数类型从更改为超类型 。contrastSmartTelevisionintnum
3、如果重写的方法接受 n 个位置参数， 然后，覆盖方法还必须接受 n 个位置参数。
4、泛型方法不能覆盖非泛型方法， 非泛型方法不能覆盖泛型方法。
*/
/*
class Television {
  // ···
  set contrast(int value) {...}
}

class SmartTelevision extends Television {
  @override
  set contrast(num value) {...}
  // ···
}
*/

//noSuchMethod
class A {
  // Unless you override noSuchMethod, using a
  // non-existent member results in a NoSuchMethodError.
  @override
  void noSuchMethod(Invocation invocation) {
    print('You tried to use a non-existent member: '
        '${invocation.memberName}');
  }
}
/*
除非满足以下条件之一，否则无法调用未实现的方法：
接收器具有静态类型。dynamic
接收器具有静态类型，即 定义未实现的方法（abstract 是可以的）， 接收器的动态类型具有与类中的实现不同的实现。noSuchMethod()Object
*/