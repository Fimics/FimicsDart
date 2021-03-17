import 'dart:math';

void main(){
  test();
}


void test(){
  var p = Point(2,321);
  var p1 = Point(3, 5);
  p1.x=940;
  num distance = p.distanceTo(p1);
  print(distance);

  // p?.x = 5;

  // var p2 =  Point2(3,4);

}

class FuPoint{
  
  num x;
  num y;
  FuPoint(this.x);

  FuPoint.fromJson(Map<String, num> json)
      : x = json['x'],
        y = json['y'] {
    print('In Point.fromJson(): ($x, $y)');
  }

  void testFu(){
    print('testFu');
  }
}

class Point extends FuPoint{
  num x; // 声明示例变量 x，初始值为 null 。
  num y; // 声明示例变量 y，初始值为 null 。
  num z = 0;

  Point(num x,num y) : super(x);

  Point.a(num x):this(x,0);

  // Point(this.x, this.y) : super(x);
  // Point(num x,num y):super(x){
  //   this.x =super.x = x;
  //   this.y = y;
  // }

//构造函数不能够被继承， 这意味着父类的命名构造函数不会被子类继承。
// 如果希望使用父类中定义的命名构造函数创建子类， 就必须在子类中实现该构造函数。
  // 命名构造函数
  // Point.origin(){
  //   x=0;
  //   y=0;
  // }

  num distanceTo(Point point){
    var dx = x-point.x;
    var dy = y -point.y;
    return sqrt(dx*dx+dy*dy);
  }
}

class ImmutablePoint{
  final num x,y;
  const ImmutablePoint(this.x,this.y);

  static final ImmutablePoint origin = const ImmutablePoint(0,0);
}