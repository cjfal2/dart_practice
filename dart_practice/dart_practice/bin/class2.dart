/*
다음 요구사항에 맞는 Car class를 만들어라.
1. name, color, numberOfSeats 를 properties로 갖는다.
2. 모든 properties 값을 출력하는 method display 를 정의해라.
3. 모든 properties를 필수로 초기화하도록 constructor를 정의하라.
4. sedan 이란 object와, suv란 object를 만들자.
5. 생성한 Object의 display method를 호출하여 properties값을 console에 출력하라.
*/
void main() {
  // 4. sedan 이란 object와, suv란 object를 만들자.
  Car sedan = Car("sedan", "black", 5);
  Car suv = Car("suv", "green", 7);
  // 5. 생성한 Object의 display method를 호출하여 properties값을 console에 출력하라.
  sedan.display();
  suv.display();
}

class Car {
  // 1. name, color, numberOfSeats 를 properties로 갖는다.
  String? name;
  String? color;
  int? numberOfSeats;

  // 2. 모든 properties 값을 출력하는 method display 를 정의해라.
  void display() {
    print('이름: $name');
    print('색상: $color');
    print('좌석 수: $numberOfSeats');
    print(" ");
  }

  // 3. 모든 properties를 필수로 초기화하도록 constructor를 정의하라.
  Car(this.name, this.color, this.numberOfSeats);
}
