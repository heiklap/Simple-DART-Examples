///  hkl  24.7.2015  pubwalk   common file operations
///  %: 5
///
///   NOTE:  CODES HERE ARE NOT MINE
///   Codes from:   https://www.dartlang.org/dart-by-example/


import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:crypto/crypto.dart';


///  Collecting example codes to one
void main() {
//  Uncomment the functions, that you want to use, or make menu for them
//  NOTE:  just examples
//  These are not in "working state" here, cos they use same example file many times
  writeStringToFile();
  readFileAsStrings();
  readFileAsLines();
  //  readFileAsBytes();      //  uncomment, when you want to use this
  useStreamToReadFile();
  handleFileError();
  writeAnotherStringToFile();
  useStreamToWriteToFile();

  //------------------------
  createTempFile();

}


void writeStringToFile() {
  final filename = 'file.txt';
  new File(filename).writeAsString('some content')
  .then((File file) {
    // Do something with the file.
  });
}



///  Reading a file as lines
///  Use the File readAsLines() method to read file contents as lines.
void readFileAsLines() {
  new File('file.txt').readAsString().then((String contents) {
    // Do something with the file contents.
  });
}


///  Reading a file as a string
///  Use the File readAsString() method to read a file as a string.
void readFileAsStrings() {
  new File('file.txt').readAsLines().then((List<String> lines) {
    // Do something with lines.
  });
}


void readFileAsBytes() {
  new File('file.txt').readAsBytes().then((bytes) {
    // Do something with the bytes. For example, convert to base64.
    String base64 = CryptoUtils.bytesToBase64(bytes);
    // ...
  });
}


///  Reading a file as bytes
///  Use the File readAsBytes() method to read file contents as bytes.
useStreamToReadFile() {
  final file = new File('file.txt');
  Stream<List<int>> inputStream = file.openRead();

  inputStream
  // Decode to UTF8.
  .transform(UTF8.decoder)
  // Convert stream to individual lines.
  .transform(new LineSplitter())
  // Process results.
  .listen((String line) {
    print('$line: ${line.length} bytes');
  },
  onDone: () { print('File is now closed.'); },
  onError: (e) { print(e.toString()); });
}


///  Handling errors when reading a file
///  Use then() to read the file contents, and catchError() to catch errors.
///  Register a callback with catchError() to handle the error.
void handleFileError() {
  void handleError(e) {
    print('There was a ${e.runtimeType} error');
    print(e.message);
  }

  fileWithError() {
    final filename = 'non_existent_file.txt';
    new File(filename).readAsString()
    // Read and print the file contents.
    .then(print)
    // Catch errors.
    .catchError((e) {
      print('There was a ${e.runtimeType} error');
      print('Could not read $filename');
    });
  }
  fileWithError();
}


///  Writing a string to a file
///  Use the File object’s writeAsString() method to write a string to a file.
///  After writing the string, the method closes the file.
void writeAnotherStringToFile() {
  final filename = 'file.txt';
  new File(filename).writeAsString('some other content')
  .then((File file) {
    // Do something with the file.
  });
}


//  Writing bytes to a file
//  Use the File writeAsBytes() method to write bytes to a file.
void writeBytesToFile() {
  final string = 'Dart!';
  // Encode to UTF8.
  var encodedData = UTF8.encode(string);

  new File('file.txt')
  .writeAsBytes(encodedData)
  .then((file) => file.readAsBytes())
  .then((data) {
    // Decode to a string, and print.
    print(UTF8.decode(data)); // Prints 'Dart!'.
  });
}


//  Using a stream to write to a file
//  Use the File openWrite() method to create a new IOSink for a file,
// to write to the file a little at a time. To append to the file, set the mode argument
// to FileMode.APPEND (it defaults to FileMode.WRITE).
void useStreamToWriteToFile() {
  var file = new File('file.txt');
  var sink = file.openWrite();
  sink.write('FILE ACCESSED ${new DateTime.now()}\n');

  // Close the IOSink to free system resources.
  sink.close();
}


///  Creating a file
///  Use the File create() method to create a file.
///  To create intermediate directories, set the recursive argument to true (default is false).
void createTempFile() {

  // Get the system temp directory.
  var systemTempDir = Directory.systemTemp;

  // Creates dir/, dir/subdir/, and dir/subdir/file.txt in the system
  // temp directory.
  new File('${systemTempDir.path}/dir/subdir/file.txt').create(recursive: true)
  // The created file is returned as a Future.
  .then((file) {
    print(file.path);
  });
}


