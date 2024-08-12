/*
다음 요구사항에 맞는 MathUtils 클래스를 만들어라.
calculateSquare라는 static method를 정의하고, 이 method는 주어진 숫자의 제곱을 반환해야 한다.
MathUtils 은 object를 생성하지 않고 calculateSquare 메서드를 호출하여 숫자 5의 제곱을 출력하라.
*/

class MathUtils {
  static num calculateSquare(num number) {
    return number * number;
  }
}

void main() {
  num number1 = MathUtils.calculateSquare(5);
  print(number1);
}
