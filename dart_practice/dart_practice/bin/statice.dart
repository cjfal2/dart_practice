void main() {
  Children children = Children();
  print(children.phoneNumber); // 가능
  // print(
  // children.father // 불가능
  // );
  print(Children.father); // 가능, 홍길동
  print(Children.address); // 가능
  // children.getInfo // 불가능
  children.display();
  print(Children.father); // 남주혁
  Children.father = "유재석";
  print(Children.father); // 유재석
}

class Children {
  String phoneNumber = "01011010011";
  static String father = "홍길동"; // 코드레벨 변수, 런타임에 값이 할당될 수 있다.
  static const address = "용산구"; // 코드레벨 변수
  static getInfo() {
    father = "남주혁";
    print(
        "겟인포 $father $address"); // 가능 => class의 이름을 통해 접근할 수 있어서 생성되지 않아도 접근 가능
    // print(phoneNumber); //  불가능
  }

  void display() {
    getInfo();
    print("디스플레이 $father");
  }
}
