import 'dart:io';

class Operator{
  String opString;
  Function() calculateFunction;
  Operator(this.opString,this.calculateFunction);
}
class Calculator{
  String input;
  int leftValue=0;
  int rightValue=0;
  Operator? operator;

  Calculator(this.input){
    init();
  }

  void init(){
    List<String> spList=inputSplit();
    leftValue=int.parse(spList[0]);
    rightValue=int.parse(spList[1]);
    operator=setOperator();
  }

  int add(){
    return leftValue + rightValue;
  }
  double divide(){
    return leftValue/rightValue;
  }
  int sub(){
    return leftValue - rightValue;
  }
  int mul(){
    return leftValue* rightValue;
  }

  List<String> inputSplit(){
    Operator operator=setOperator();
    return input.split(operator.opString);
  }

  //todo 음수일 경우 - split error : JH 2024-08-07
  Operator setOperator(){
    Operator opObj;
    if(input.contains('+')){
      opObj=Operator('+', add);
    }else if(input.contains('-')){
      opObj=Operator('-', sub);
    }else if(input.contains('*')){
      opObj=Operator('*', mul);
    }else {//if(input.contains('/'))
      opObj=Operator('/', divide);
    }
    return opObj;
  }

  num result(){
    return operator?.calculateFunction.call();
  }

}
void main(){
  stdout.write('수식입력:');
  String input=stdin.readLineSync()!;
  Calculator calculator=Calculator(input);
  print(calculator.result());
}