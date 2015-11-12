///  hkl  12.11.2015  dipp/web   simple string buffer tests
///  %: 3                        in GitHub: yes
//


void main() {
  List myList = ['Testing','Writing','Debugging','Closing computer'];
  String myString = 'Gonna end this session soon';
  var sb = new StringBuffer();

  sb.writeAll(myList);
  sb.writeAll(myList, ' lol  ');      // optional parameter; String separator

  sb.write(myString);

  testStringBuffer(sb);

}


void testStringBuffer(StringBuffer sb) {
  void runStrBuffTests() {
    String isEmpty = (sb.isEmpty.toString());
    print('Buffer is empty:  $isEmpty');

    String isNotEmpty = (sb.isNotEmpty.toString());
    print('Buffer is NOT empty:  $isNotEmpty');

    String buffLength = (sb.length.toString());
    print('StringBuffer length:  $buffLength');

    String buffRuntimeType = (sb.runtimeType.toString());
    print('Runtime type:  $buffRuntimeType');

    print(' =====     what is in StringBuffer:     =====   ');
    print(sb.toString());
  }

  print('---   testing StringBuffer   ---');
  runStrBuffTests();

  print('...   clearing SgtringBuffer   ''');
  print('---   testing StringBuffer again   ---');
  sb.clear();

  runStrBuffTests();
  print('---   testing end   ---');

}

