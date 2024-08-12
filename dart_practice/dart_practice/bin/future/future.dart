import 'dart:async';

Future<String> returnHelloWorld() async {
  await Future.delayed(Duration(seconds: 2));
  return "Hello, World!";
}

Future<void> main() async {
  String text = await returnHelloWorld();
  print("1");
  print(text);
  print("2");
}
