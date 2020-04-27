import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  double tas2Result = await task2();
  task3(tas2Result);
}

void task1() {
  String result = 'tasking 1 data';
  print('Task 1 complete');
}

Future<double> task2() async {
  
  Duration threeSeconds = Duration(seconds: 3);
  
  String result;
  
  await Future.delayed(threeSeconds, () {
    result = 'tasking 2 data';
    print('Task 2 complete');
  });
  
  return 1.2;
  
}

void task3(double task2Data) {
  String result = 'tasking 3 data';
  print('Task 3 complete with $task2Data');
}