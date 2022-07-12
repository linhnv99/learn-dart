int test({int a: 10, int b: 20}) {
  return a + b;
}

int test2(var a, [var b, var c]) {
  var sum = a;
  if (b != null) sum += b;
  if (c != null) sum += c;
  return sum;
}

int test3(int a, int b) => a + b;

testCallback(var s, var callback) {
  callback(s);
}

void main(List<String> args) {
  // funtion
  int sum = test(); //30
  int sum1 = test(b: 2); // 12
  int sum2 = test(a: 5); // 25

  int sum3 = test2(4);
  int sum4 = test2(1, 2, 3);

  // anonymous function
  var x = (var a, var b) {
    return a + b;
  }(5, 6);

  testCallback("Hello World", (s) => print(s));
}
