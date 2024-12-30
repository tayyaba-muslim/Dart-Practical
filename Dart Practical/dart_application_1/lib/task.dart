import 'dart:io';

void main() {
  print("Welcome to Dart Programming");

  List<String> tasks = [];

  while (true) {
    print('\n--- Dart Practical [To-Do List] ---');
    print('1. View all tasks');
    print('2. Add new task');
    print('3. Delete a task');
    print('4. Update an existing task');
    print('5. Exit');
    stdout.write('Enter your choice: ');
    String choice = stdin.readLineSync()!;

    switch (choice) {
      // View all tasks
      case '1':
        if (tasks.isEmpty) {
          print('No tasks available');
        } else {
          print('\n--- Tasks ---');
          for (var i = 0; i < tasks.length; i++) {
            print('${i + 1}. ${tasks[i]}');
          }
        }
        break;

      // Add new task
      case '2':
        stdout.write('Enter new task to Add: ');
        String newTask = stdin.readLineSync()!;
        tasks.add(newTask);
        print('Task added successfully');
        break;

      // Delete a task
      case '3':
        if (tasks.isEmpty) {
          print('No tasks available');
        } else {
          print('\n--- Tasks ---');
          for (var i = 0; i < tasks.length; i++) {
            print('${i + 1}. ${tasks[i]}');
          }
          stdout.write('Enter a task number to delete: ');
          int taskInd = int.parse(stdin.readLineSync()!) - 1;

          if (taskInd >= 0 && taskInd < tasks.length) {
            tasks.removeAt(taskInd);
            print('Task deleted successfully');
          } else {
            print('Invalid task number');
          }
        }
        break;

      // Update a task
      case '4':
        if (tasks.isEmpty) {
          print('No tasks available');
        } else {
          print('\n--- Tasks ---');
          for (var i = 0; i < tasks.length; i++) {
            print('${i + 1}. ${tasks[i]}');
          }
          stdout.write('Enter a task number to update: ');
          int taskInd = int.parse(stdin.readLineSync()!) - 1;

          if (taskInd >= 0 && taskInd < tasks.length) {
            stdout.write("Enter the new task to update: ");
            String updTask = stdin.readLineSync()!;
            tasks[taskInd] = updTask;
            print('Task updated successfully');
          } else {
            print('Invalid task number');
          }
        }
        break;

      // Exit
      case '5':
        print('Exiting the application');
        return;

      default:
        print('Invalid choice... Try Again');
        break;
    }
  }
}
