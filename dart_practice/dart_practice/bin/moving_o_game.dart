import 'dart:io';

void main() {
  /** 필요한 것
   * 1. 게임판 (board) => 일단은 지정된 값으로 진행
   * 2. 움직임 입력 받기 (wasd 엔터) => 표준입출력으로 진행, while문으로 진행해서 끊기
   * 3. 입력 받은 움직임 판단하기 => 일단 죽는거 없이 무한모드로 (밖으로 나가면 아무것도 안하기, 겹치면 뚫고 지나가기)
   */
  List<List<String>> board = []; // N * N 보드로 만들 것임
  int boardSize = 20;
  for (var i = 0; i < boardSize; i++) {
    List<String> boardLine = List.filled(boardSize, "."); // dart에서 리스트를 채우는 방법
    board.add(boardLine);
  }

  List<int> nowPosition = [0, 0]; // x값(행), y값(열)
  board[nowPosition[0]][nowPosition[1]] = "O"; // 처음 시작 값을 바꿔주기
  List<String> reference = ["w", "a", "s", "d"]; // wasd가 잘 들어왔는지 확인할 레퍼런스 리스트
  Map<String, List<int>> directions = {
    "w": [-1, 0], // w 상
    "a": [0, -1], // a 좌
    "s": [1, 0], // s 하
    "d": [0, 1] // d 우
  }; // Map타입으로 wasd에 대한 좌표 이동 방향을 정의

  void printBoard() {
    // 보드 출력하는 함수
    for (var row in board) {
      print(row.join(""));
    }
  }

  void moveFunction({String? direction}) {
    List<int> goDirection = directions[direction]!; // 진행방향 설정
    int newX = nowPosition[0] + goDirection[0]; // 새로운 x좌표
    int newY = nowPosition[1] + goDirection[1]; // 새로운 y좌표
    if (boardSize > newX && boardSize > newY && newX >= 0 && newY >= 0) {
      // 새로운 좌표가 내부 범위에 있을 경우 게임 진행, nowPosition 값을 바꾸고 board에 표시한다.
      nowPosition = [newX, newY]; // 현재 위치 바꾸기
      board[newX][newY] = "O"; // 보드바꾸기

      printBoard();
    }
  }

  printBoard();

  // 무한으로 진행
  while (true) {
    // 사용자 입력, null값이 포함되도록 하는 함수이므로 ?를 적어준다.
    String? inputKey = stdin.readLineSync();
    if (inputKey == null) {
      // null값인 경우 다시 입력하게 하기
      print("wasd 중 하나를 입력해주세요.");
      continue;
    } else {
      if (reference.contains(inputKey.toLowerCase())) {
        // 게임 진행 부분, 대문자를 소문자로 바꾸고 wasd 라면 진행한다.
        moveFunction(direction: inputKey);
      } else {
        // 다른 값인 경우 다시 입력하게 하기
        print("wasd 중 하나를 입력해주세요.");
        continue;
      }
    }
  }
}
