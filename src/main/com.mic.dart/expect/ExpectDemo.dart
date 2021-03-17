import 'dart:math';

void main() {
  try {
    test1();
  } on FormatException catch (e) {
    print('test1()调用发生异常');
    print(e.message);
  }catch(e){
    print(e.runtimeType);
    print('throw 1');
  }finally{
    print('im finally');
  }
}

void test1() {
  throw FormatException('Expected at least 1 section');
  throw 1;

  void distanceTo(int q) => throw UnimplementedError();
}
