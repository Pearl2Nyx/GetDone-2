import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
  final List toDoList;

  StatisticsScreen({required this.toDoList});

  @override
  Widget build(BuildContext context) {
    int completedTasks = toDoList.where((task) => task[1] == true).length;
    int totalTasks = toDoList.length;
    int pendingTasks = toDoList.length - completedTasks;
    num completionPercentage = totalTasks > 0 ? (completedTasks / totalTasks) * 100 : 0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Statistics'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total Tasks: $totalTasks',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Completed Tasks: $completedTasks',
                style: TextStyle(fontSize: 18, color: Colors.green),
              ),
              Text(
                'Pending Tasks: $pendingTasks',
                style: TextStyle(fontSize: 20),
              ),
            ]
        ),
      ),
    );
  }
}

