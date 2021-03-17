
void main(){
  var x = 1;
  var hex = 0xDEADBEEF;

  var y = 1.1;
  var exponents = 1.42e5;
  double z = 1; // 相当于 double z = 1.0

  //string -> int
  var one = int.parse('1');
  print(one.runtimeType);
  print('1'.runtimeType);

  //int -> string
  String oneToString = 1.toString();
  print(oneToString);
  print(oneToString.runtimeType);
}