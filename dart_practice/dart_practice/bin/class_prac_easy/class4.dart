/*
Calculator class를 만들어라. 이 클래스는 사칙연산을 지원한다.
사용자로부터 하나의 연산자를 사용하는 수식을 입력받는다. ex) 4+3, 4-2, 3*5, 10/3
Calculator class를 통해 연산결과를 console에 출력한다.
property와 method를 활용한다.
힌트 :
요구조건은 다양한 방법으로 충족시킬 수 있다. 자신만의 방법으로 완성하자.
property와 method를 어떤식으로든 사용하고, 계산결과가 잘 나온다면 정답이다.
*/
import 'dart:io';

void main() {
  while (true) {
    print("계산식을 입력하세요(종료: exit). ex) 1+1, 1/1, 1-1, 1*1");
    String? inputText = stdin.readLineSync();
    if (inputText == null) {
      print("값을 입력하세요");
      print(" ");
    } else {
      inputText.trim(); // 공백제거
      if (inputText == "exit") {
        print("계산기를 종료합니다.");
        print(" ");
        break;
      } else if (checkSymbols(inputText)) {
        // 모두 통과 계산 시작
        late List<String> numbers;
        late double num1;
        late double num2;
        late String calSymbol;

        if (inputText.contains("+")) {
          numbers = inputText.split("+");
          calSymbol = "+";
        } else if (inputText.contains("-")) {
          numbers = inputText.split("-");
          calSymbol = "-";
        } else if (inputText.contains("*")) {
          numbers = inputText.split("*");
          calSymbol = "*";
        } else if (inputText.contains("/")) {
          numbers = inputText.split("/");
          calSymbol = "/";
        }
        num1 = double.parse(numbers[0]);
        num2 = double.parse(numbers[1]);
        Calculator calculator = Calculator(num1, num2, calSymbol);
        calculator.display();
      } else {
        print("올바른 값을 입력하세요. 입력 내용: $inputText ");
        print(" ");
      }
    }
  }
}

bool checkSymbols(String text) {
  int symbolAmount = 0;
  if (text.contains("+") && text.split("+").length - 1 == text.length - 1) {
    symbolAmount++;
  } else {
    return false;
  }
  if (text.contains("/") && text.split("/").length - 1 == text.length - 1) {
    symbolAmount++;
  } else {
    return false;
  }
  if (text.contains("-") && text.split("-").length - 1 == text.length - 1) {
    symbolAmount++;
  } else {
    return false;
  }
  if (text.contains("*") && text.split("*").length - 1 == text.length - 1) {
    symbolAmount++;
  } else {
    return false;
  }
  for (var s
      in "!@#~`%^&()_=]}[{||\\\$<>,.?/qwertyiuiopasdfghjklzxcvbnmQWERTYIUOPASDFGHKJLZXCVBNM"
          .split("")) {
    if (text.contains(s)) {
      return false;
    }
  }
  if (symbolAmount == 1) {
    return true;
  }
  return false;
}

class Calculator {
  double? number1;
  double? number2;
  String? symbol;

  Calculator(this.number1, this.number2, this.symbol);

  void display() {
    switch (symbol) {
      case "+":
        print("계산결과: ${number1! + number2!}");
        break;
      case "-":
        print("계산결과: ${number1! - number2!}");
        break;
      case "/":
        print("계산결과: ${number1! / number2!}");
        break;
      case "*":
        print("계산결과: ${number1! * number2!}");
        break;
    }
    print(" ");
  }
}


// 덧셈: plus
// 뺄셈: minus
// 곱셈: multiplication
// 나눗셈: division