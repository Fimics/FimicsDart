void main() {
  testString();
}

void testString() {
  var s = 'string interpolation';

  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, ' + 'which is very handy.');
  print('That deserves all caps. ' + '${s.toUpperCase()} is very handy!');
      var s1 = '''
      You can create
      multi-line strings like this one.
      ''';

      var s2 = """This is also a
      multi-line string.""";

   //使用 r 前缀，可以创建 “原始 raw” 字符串
  var sr = r"In a raw string, even \n isn't special.";
  print(sr);
}
