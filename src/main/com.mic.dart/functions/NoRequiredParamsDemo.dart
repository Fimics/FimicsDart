void main(){

  enableFlags(bold: true);
  var msg =say('beijing', 'hello','laoWan');
  print(msg);
}

//命名可选参数
void enableFlags({bool bold, bool hidden=false}) {
   print(bold);
   print(hidden);
}
//位置可选参数 将参数放到 [] 中来标记参数是可选的：
String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

//如何为位置参数设置默认值
String say1(String from, String msg,
    [String device = 'carrier pigeon', String mood]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  if (mood != null) {
    result = '$result (in a $mood mood)';
  }
  return result;
}


//ist 或 map 可以作为默认值传递。 下面的示例定义了一个方法 doStuff()， 并分别指定参数 list 和 gifts 的默认值。
void doStuff(
    {List<int> list = const [1, 2, 3],
      Map<String, String> gifts = const {
        'first': 'paper',
        'second': 'cotton',
        'third': 'leather'
      }}) {
  print('list:  $list');
  print('gifts: $gifts');
}