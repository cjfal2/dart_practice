void main() {
  const int x = 1;
  const int y = 1;
  const int z = 1;

  void func1() {
    const int z = 3;

    print('a $x $y $z'); // a 1 1 3
  }

  void func2() {
    const int y = 2;
    const int z = 2;

    print('b $x $y $z'); // b 1 2 2
    func1();
  }

  print('c $x $y $z'); // c 1 1 1
  func2();
}
