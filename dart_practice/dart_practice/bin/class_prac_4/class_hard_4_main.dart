import 'class_hard_4_class.dart';

void main() {
  Employee kim = Employee(5000, 50);
  print(kim.getSalary);
  kim.setSalary = -1000; // 사용을 변수 쓰는거처럼
  kim.setSalary = 6000;
  print(kim.getSalary);
}
