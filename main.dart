import 'dart:ffi';
import 'dart:math';

/**
  *Everything is Object (Exclude NULL), extend base Object same as Java
  * Do not have private, public, protected,  '_' understood as private


  ** final & const
    + const: (compile) assign variable for the first time
    + final: (runtime) assign variable for the first time, the 2nd assign will be error


  Data types: int, bool, String, double, dynamic, var, Array, Map

  Data type conversion: `as`  ex: var as MyClass
  Get method with Object != null : object?.method()
  check data type: `is` ex: var is MyClass

 */

void main(List<String> args) {
  int a = 5;

  bool isTrue = true;

  String s = "OK";

  double b = 1.0;
  // b = "a"; // error

  dynamic c = "abc";
  // c = 10; // oke

  var d;
  d = 10; // oke
  // d = "a"; // oke

  // var d1 = "abc";
  // d1 = 5; // error;

  const constant = 10;

  int random = Random(5).nextInt(200);

  final finals = random * 2;
}
