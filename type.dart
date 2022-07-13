/**
   Build-in type: Number, String, Boolean, List, Set, Map, Symbols, Runes, NUll
 */

// Dart 2.12 added the late modifier ( support Lazily initializing a variable.)

late String s;
void main(List<String> args) {
  // print(s); // error because s has not been initialized (Hiểu như s phải được có giá trị trước khi thực thi gì đó)
  s = "Lazily";
  // print(s);

  //1. Number (int, double)

  //2. String (use ${})

  //3. Boolean (bool)

  //4. List

  // init list
  var list = [1, 2, 3, 4];
  List<dynamic> list2 = ["a", 1, 2];

  // (...) - spread operator, (...?)null aware spread operator- tránh exception khi value = null
  var nullAware;
  var list3 = [1, ...?nullAware];

  //collection if and collection for,
  var ci = true;
  var nav = ['Home', 'Furniture', 'Plants', if (ci) 'Outlet'];

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];

  //5. Set
  // init
  var set = {1, 2, 3, 4};
  var set2 = <int>{};
  Set<String> set3 = {};

  //6. Map

  var map1 = {'k1': 1, 'k2': 2};
  var map2 = Map<String, String>;

  // 7. Rune
  // 8. Symbol

  String? name;
  name = "abc";
  print('name: $name');
  print("a" is! int);

  // Lexical closures
  var a = makeAdder(2);
  print(a(2));
}

Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}
