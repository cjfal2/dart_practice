enum TrafficLight {
  red,
  yellow,
  green;
}

void main() {
  TrafficLight nowColor = TrafficLight.green;

  switch (nowColor) {
    case TrafficLight.red:
      print("빨간불");
      break;
    case TrafficLight.yellow:
      print("노란불");
      break;
    case TrafficLight.green:
      print("초록불");
      break;
  }
}
