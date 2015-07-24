///  hkl  24.7.2015  pubwalk/bin   sample http operations
///  %: 2
///   CODE ORIGINATING FROM:   https://www.dartlang.org/dart-by-example/



import 'dart:convert';
import 'package:http/http.dart' as http;


///
 void main() {
 //  Uncomment the functions, that you want to use, or make menu for them

   //  sampleHttpRequest();
   //  readFromDawopack();
   //  readFromPage('https://pub.dartlang.org/packages/http');

   //  makePostRequest();
   //  addCustomHeadersToHttp();

   makingMultipleRequests();
 }


///  HTTP requests and responses
///  Making a GET request#
///  Use the http package get() function to make a GET request.
void readFromPage(String pageToRead) {
  var url =  pageToRead;
  http.get(url).then((response) {
    print("Response status: ${response.statusCode}");
    print("Response body: ${response.body}");
    print('----   hello from http  dartlang');
  });
}


///  HTTP requests and responses
///  Making a GET request#
///  Use the http package get() function to make a GET request.
void readFromDawopack() {
  var url = 'http://dawopack.blogspot.fi/2014/12/map-of-dart-learning-subjects-and-their.html/';
  http.get(url).then((response) {
    print("Response status: ${response.statusCode}");
    print("Response body: ${response.body}");
    print('----   hello from Dawopack blog');
  });
}



///  HTTP requests and responses
///  Making a GET request#
///  Use the http package get() function to make a GET request.
void sampleHttpRequest() {
var url = 'http://httpbin.org/';
http.get(url).then((response) {
print("Response status: ${response.statusCode}");
print("Response body: ${response.body}");
});
}


///  Making a POST request#
///  Use the http package post() function to make a POST request.
void makePostRequest() {
  var url = 'http://httpbin.org/post';
  http.post(url, body: 'name=doodle&color=blue').then((response) {
    print("Response status: ${response.statusCode}");
    print("Response body: ${response.body}");
  });
}



///  Adding custom headers to a request
///  Use the headers argument to the function used to make an HTTP request.
///  The example below adds a ‘User-Agent’ header to a get request.
void addCustomHeadersToHttp() {
  var url = 'https://api.github.com/users/dart-lang/repos';
  http.get(url, headers : {'User-Agent':'Dart/1.0 (My Dart client)'})
  .then((response) {
    List<String> repos = JSON.decode(response.body);
    var heading = 'Repository | Star count  | Fork count';
    print(heading);
    print(new List.filled(heading.length, '=').join());
    for (var repo in repos) {
      print("${repo['name']} | "
      "${repo['stargazers_count']} | "
      "${repo['forks_count']}");
    }
  });
}
/*   output
Response status: 200
Response body: {
"args": {},
"data": "name=doodle&color=blue",
"files": {},
"form": {},
"headers": {
"Accept-Encoding": "gzip",
"Content-Length": "22",
"Content-Type": "text/plain; charset=utf-8",
"Host": "httpbin.org",
"User-Agent": "Dart/1.11 (dart:io)"
},
"json": null,
"origin": "89.27.12.49",
"url": "http://httpbin.org/post"
}
*/



///  Making multiple requests to the same server
///  Use the Client class in the http Pub package for making multiple requests to the same server.
///  Using Client keeps keep a persistent connection open to the server and is better than making multiple single requests.
void makingMultipleRequests() {
  printResponseBody(response) {
    print(response.body.length);
    if (response.body.length > 100) {
      print(response.body.substring(0, 100));
    } else {
      print(response.body);
    }
    print('...\n');
  }

  void doTheseManyRequsts() {               //   yeah..   funny name
    var url = 'http://www.google.com/';
    var client = new http.Client();
    client.get('${url}/search')
    .then((response) {
      printResponseBody(response);
      return client.get('${url}/doodles');
    })
    .then(printResponseBody)

// Close the connection when done.
    .whenComplete(client.close);
  }
  doTheseManyRequsts();
}

