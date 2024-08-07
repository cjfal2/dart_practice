class Employee {
  int _salary;
  final int _bonus;
  Employee(this._salary, this._bonus) {
    print("초기 값: $_salary");
  }

  int get getSalary => _salary; // getter
  int get getBonus => _bonus;

  // setter
  set setSalary(int newSalary) {
    if (newSalary < 0) {
      print("음수값을 넣을 수 없습니다.");
    } else {
      print("변경: $_salary -> $newSalary");
      _salary = newSalary;
    }
  }
}

/*
- 다음 요구사항에 맞는 Employee 클래스를 만들어라.
1. salary라는 property을 가지며, 이 property에 대한 getter와 setter를 정의하되, setter는 음수 값을 설정하지 못하게 하라.
2. object 생성 시 초기 값을 할당하고, setter를 사용하여 값을 변경한 후 출력하라.
*/
