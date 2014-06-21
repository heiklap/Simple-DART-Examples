//  21.6.2014   hkl   testing function dynamic parameters      In GitHub = Yes


void main() {
  //  using clear mark to see where main is. (for big programs)
  print('FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF');


  runFourFunctions(firstFunc(), secondFunc(), thirdFunc(), fourthFunc());


  //  print(_msg);   //  error, private variable inside function
  print('fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff');
}




//  ***********   three ways for function header   *************
//  inside this function are parameters;   one, two, three, four...
// Nice:   you can omit types in function parameters

//  # 1:
// void runFourFunctions(one, two, three, four) {     //  WORKS !!
//  so no need for types in parameters

//  # 2:
// But if I make parameters dynamic, with var:
//  void runFourFunctions(var one, var two, var three, var four) {

//  # 3:   ( void type is not allowed as function parameter )
//  or you can use types, to make usage of function clearer

//  parameters:   num, String, bool.. make very clear, how to use this function
void runFourFunctions(var one, num two, String three, bool four) {
  print(' running four functions.. inside this function..');
  print(''); // note: this is not runned first

  // some private variables, which are visible only inside this function
  //  underscore:   _   makes variables private
  bool    _yesNo = false;
  String  _msg   = '___  empty ____';
  num     _x     = 0;

  //  running functions and setting their return values to variables
  one;                     //  running first function
  _x = two;                //  second function sets value to _x (num)
  _msg = three;            //  third function sets String value
  _yesNo = four;           //  fourth function
  print(_x);               // no more 0
  print(_msg);             // no more    ___  empty ____
  print(_yesNo);           // no more false
  print('-----------------------------------');
}



//   bodyes of four functions, which are used in this example
//   void function = no return value
//   functions are named this way.. to make them anonymous from values
//   in example they are runned and used in parameters, in this order
void firstFunc() {
  print('hello from  FIRST  function');
}


//  function, that returns a num value
num secondFunc() {
  print('hello from  SECOND  function');
  return 3;
}


//   this function returns String value
String thirdFunc() {
  print('hello from  THIRD  function');
  return 'Happy birthday... ';
}


//   this function returns bool value
bool fourthFunc() {
  print('hello from  FOURTH  function');
  return true;
}
