import "class_getter_setter_class.dart";

void main() {
  Rectangle rectangle = Rectangle(5, 10);
  // print("${rectangle._height}"); // 에러
  print("${rectangle.getHeight}");
  print("${rectangle.getWidth}");
}
