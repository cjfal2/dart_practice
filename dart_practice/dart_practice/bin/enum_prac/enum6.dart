/*
monday, tuesday, wednesday, thursday, friday, saturday, sunday 값을 포함해 주세요.
현재 요일을 Day.monday로 설정하고, 요일을 출력하는 코드를 작성해 주세요.

 실습6
문제 :

Weekday enum을 생성하세요. (practice 1 참고)
monday, tuesday, wednesday, thursday, friday, saturday, sunday 값을 포함해 주세요. 동시에 각 요일의 한글표현도 지정해주세요. (enhanced enum 활용)
오늘 요일에 해당하는 Weekday의 한글 명칭을 console에 출력하세요.
**Hint : **

DateTime.now().weekday는 1 (월요일)부터 7 (일요일)까지의 값을 반환합니다.
요일값이 int이니 Weekday의 index와 일치하네요. index로 value를 구하는 method를 만들면 좋겠네요.
*/

enum Weekday {
  monday(kor: "월요일"),
  tuesday(kor: "화요일"),
  wednesday(kor: "수요일"),
  thursday(kor: "목요일"),
  friday(kor: "금요일"),
  saturday(kor: "토요일"),
  sunday(kor: "일요일");

  final String kor;

  const Weekday({required this.kor});

  static Weekday fromIndex(int index) {
    return Weekday.values[index];
  }
}

void main() {
  int today = DateTime.now().weekday - 1;
  print(Weekday.fromIndex(today).kor);
}
