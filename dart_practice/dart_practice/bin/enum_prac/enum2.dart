void main() {
  for (var i = 0; i < 12; i++) {
    print(Month.fromIndex(i));
  }
}

enum Month {
  january,
  february,
  march,
  april,
  may,
  june,
  july,
  august,
  september,
  october,
  november,
  december;

  static Month fromIndex(int index) {
    return Month.values[index];
  }
}
