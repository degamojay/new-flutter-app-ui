import 'package:flutter/material.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  final List<Map<String, dynamic>> tasks = [
    {
      "title": "Grocery Shopping",
      "description": "Lorem ipsum dolor sit amet.",
      "completed": false,
    },
    {
      "title": "Workout",
      "description": "Lorem ipsum dolor sit amet.",
      "completed": false,
    },
    {
      "title": "Eat",
      "description": "Lorem ipsum dolor sit amet.",
      "completed": false,
    },
    {
      "title": "Sleep",
      "description": "Lorem ipsum dolor sit amet.",
      "completed": false,
    },
    {
      "title": "Play Games",
      "description": "Lorem ipsum dolor sit amet.",
      "completed": false,
    },
    {
      "title": "Play Video Games",
      "description": "Lorem ipsum dolor sit amet.",
      "completed": false,
    },
    {
      "title": "Watch TV",
      "description": "Lorem ipsum dolor sit amet.",
      "completed": false,
    },
    {
      "title": "Check Emails",
      "description": "Lorem ipsum dolor sit amet.",
      "completed": false,
    },
    {
      "title": "Watch News Online",
      "description": "Lorem ipsum dolor sit amet.",
      "completed": false,
    },
    {
      "title": "Clean Room",
      "description": "Lorem ipsum dolor sit amet.",
      "completed": false,
    },
    {
      "title": "Learn a New Skill",
      "description": "Lorem ipsum dolor sit amet.",
      "completed": false,
    },
    {
      "title": "Hang Out with Friends",
      "description": "Lorem ipsum dolor sit amet.",
      "completed": false,
    },
    {
      "title": "Play Basketball",
      "description": "Lorem ipsum dolor sit amet.",
      "completed": false,
    },
    {
      "title": "Attend a Mass",
      "description": "Lorem ipsum dolor sit amet.",
      "completed": false,
    },
    {
      "title": "Finish Flutter Application",
      "description": "Lorem ipsum dolor sit amet.",
      "completed": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios_rounded),
        ),
        title: const Text('Things to do'),
      ),
      body: ListView.separated(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.primary,
                child: Text(
                task["title"][0].toUpperCase(),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary, 
                ),
                ),
            ),
            title: Text(task["title"]),
            subtitle: Text(task["description"]),
            trailing: IconButton(
              icon: Icon(
                task["completed"] ? Icons.check_box : Icons.check_box_outline_blank,
              ),
              onPressed: () {
                setState(() {
                  tasks[index]["completed"] = !tasks[index]["completed"];
                });
              },
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        tooltip: 'Add Task',
        shape: const CircleBorder(), 
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.tertiary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
