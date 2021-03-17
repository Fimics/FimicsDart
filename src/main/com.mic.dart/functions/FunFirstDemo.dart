void main(List<String> args){
  var list = [1,2,3];
  //一个函数可以作为另一个函数的参数
  list.forEach(printElement);

  var list1 = ['apples', 'bananas', 'oranges'];
  list1.forEach((item) {
    print('${list1.indexOf(item)}: $item');
  });
}

void printElement(int e){
  print(e);
}