/*
2번 연습문제의 Car class를 이어서 사용하자.
1. Car class에 named constructor를 추가하자. 이름은 blueSedan 이다.
2. blueSedan constructor는 name=’sedan’, color=’blue’인 객체를 만든다.
3. sedan 이란 object와, suv란 object를 만들자.
4. 생성한 Object의 display method를 호출하여 properties값을 console에 출력하라.
*/
void main() {
  // sedan 이란 object와, suv란 object를 만들자.
  Car sedan = Car.blueSedan(4);
  Car suv = Car("suv", "green", 7);
  // 생성한 Object의 display method를 호출하여 properties값을 console에 출력하라.
  sedan.display();
  suv.display();
}

class Car {
  // name, color, numberOfSeats 를 properties로 갖는다.
  String? name;
  String? color;
  int? numberOfSeats;

  // 모든 properties 값을 출력하는 method display 를 정의해라.
  void display() {
    print('이름: $name');
    print('색상: $color');
    print('좌석 수: $numberOfSeats');
    print(" ");
  }

  // 모든 properties를 필수로 초기화하도록 constructor를 정의하라.
  Car(this.name, this.color, this.numberOfSeats);
  // 1. Car class에 named constructor를 추가하자. 이름은 blueSedan 이다.
  // 2. blueSedan constructor는 name=’sedan’, color=’blue’인 객체를 만든다.
  Car.blueSedan(this.numberOfSeats) {
    name = 'sedan';
    color = 'blue';
  }
  // Car.blueSedan(this.numberOfSeats)
  //   : name = 'sedan',
  //     color = 'blue';
  // 동일한 name constructor
}
