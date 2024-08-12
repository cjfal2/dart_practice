/*
- School class
1. 총 5명의 student 가 있음, List 활용

2. seoul 학생 2명, busan 학생 2명, daejoen학생 1명 생성,named constructor 사용

3. orderByAge: 나이로 정렬하는 method

4. display : 학생 정보를 출력하는 method

- Student class
a. name, gender, age, city properties 갖고 있음 , city는 seoul,busan,daejeon 으로 나뉨

b. seoul student 객체를 생성하는 named constructor를 만들자

c. busan student 객체를 생성하는 named constructor를 만들자

d. daejeon student 객체를 생성하는 named constructor를 만들자

- 나이순으로 정렬된 학생정보 console에 출력, (참고 bubble sort)
*/
void main() {}

class School {
  List<Student> students = [
    Student.busan(name: '김이랑', gender: "여자", age: 11),
    Student.busan(name: '이태수', gender: "남자", age: 14),
    Student.seoul(name: '이학수', gender: "남자", age: 13),
    Student.seoul(name: '신형우', gender: "남자", age: 11),
    Student.daejeon(name: '김서현', gender: "여자", age: 9),
  ];

  void orderByAge() {
    int lengthOfStudents = students.length;
    for (var end = 0; end < lengthOfStudents - 1; end++) {
      for (var now = 0; now < lengthOfStudents - end - 1; now++) {
        if (students[now].age! > students[now + 1].age!) {
          var temp = students[now + 1];
          students[now + 1] = students[now];
          students[now] = temp;
        }
      }
    }
  }
}

class Student {
  // a. name, gender, age, city properties 갖고 있음 , city는 seoul,busan,daejeon 으로 나뉨
  String? name;
  String? gender;
  int? age;
  String? city;

  Student(this.name, this.gender, this.age, this.city);

  // b. seoul student 객체를 생성하는 named constructor를 만들자
  Student.seoul({required this.name, required this.gender, required this.age}) {
    city = "seoul";
  }

  // c. busan student 객체를 생성하는 named constructor를 만들자
  Student.busan({required this.name, required this.gender, required this.age}) {
    city = "busan";
  }

  // d. daejeon student 객체를 생성하는 named constructor를 만들자
  Student.daejeon(
      {required this.name, required this.gender, required this.age}) {
    city = "daejeon";
  }
}
