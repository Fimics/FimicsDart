//文档 https://www.dartcn.com/guides/language/language-tour#%E7%94%9F%E6%88%90%E5%99%A8 文档

void main(){
  doConst();
  // doFinal();
  // defaultValue();
  // vars();
}

const bar = 1000000;
const double atm = 1.01325*bar;
void doConst(){
  var foo = const[];
  final bar = const[4,5,6];
  const baz = [33];
  foo = [1,2,3];
  print(foo);
  print(bar);
  // baz = [43];
  print(baz);
}

void doFinal(){
   final name = "bob";
   print(name);
   final String nickname = 'bobby';
   print(nickname);
   // name="hello";
}

void defaultValue(){
  int lineCount;
  assert(lineCount==null);
  print(lineCount);
}

void vars(){
  // var name ="bob";
//  dynamic name = "bob";
  String name = "boba";
  print(name);
  print(name.codeUnits);
  print(name.length);
  print(name.runes);
  print(name.runtimeType);
}