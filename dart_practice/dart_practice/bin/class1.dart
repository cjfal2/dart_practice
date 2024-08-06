/*
다음 요구사항에 맞는 Home class를 만들어라.
1. name, address, numberOfRooms 를 properties로 갖는다.
2. 모든 properties 값을 출력하는 method display 를 정의해라.
3. Home의 Object를 만들고 각 properties에 값을 할당해라.
4. 생성한 Object의 display method를 호출하여 properties값을 console에 출력하라.
 */

void main() {
  // 3. Home의 Object를 만들고
  Home home = Home();

  // 3. 각 properties에 값을 할당해라.
  home.name = "새싹";
  home.address = "용산구";
  home.numberOfRooms = 10;

  // 4. 생성한 Object의 display method를 호출하여 properties값을 console에 출력하라.
  home.display();
}

class Home {
  // 1. name, address, numberOfRooms 를 properties로 갖는다.
  String? name;
  String? address;
  int? numberOfRooms;

  // 2. 모든 properties 값을 출력하는 method 'display' 를 정의해라.
  void display() {
    print('이름: $name');
    print('주소: $address');
    print('방의 수: $numberOfRooms');
  }
}
