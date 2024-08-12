import 'dart:async';

Future<int> returnTwoTimes(int number) async {
  return number * 2;
}

Future<void> main() async {
  int num = await returnTwoTimes(2);
  print(num);
}
