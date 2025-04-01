import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Todo {
  String title;
  bool isCompleted;

  Todo({required this.title, this.isCompleted = false});
}

class TodoProvider extends ChangeNotifier {
  final List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  void addTodo(String title) {
    _todos.add(Todo(title: title));
    notifyListeners();
  }

  void toggleTodo(int index) {
    _todos[index].isCompleted = !_todos[index].isCompleted;
    notifyListeners();
  }

  void removeTodo(int index) {
    _todos.removeAt(index);
    notifyListeners();
  }
}

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  TodoScreenState createState() => TodoScreenState();
}

class TodoScreenState extends State<TodoScreen> {
  final TextEditingController _controller = TextEditingController();
  bool _showCompleted = true;

  @override
  Widget build(BuildContext context) {
    final todoProvider = Provider.of<TodoProvider>(context);
    final filteredTodos =
        _showCompleted ? todoProvider.todos : todoProvider.todos.where((todo) => !todo.isCompleted).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("我的待辦事項"),
        actions: [
          Row(
            children: [
              const Text("顯示已完成"),
              Switch(
                value: _showCompleted,
                onChanged: (value) {
                  setState(
                    () {
                      _showCompleted = value;
                    },
                  );
                },
              ),
              const SizedBox(
                width: 8,
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: "新增待辦事項",
                suffixIcon: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      todoProvider.addTodo(_controller.text);
                      _controller.clear();
                    }
                  },
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              "待完成: ${todoProvider.todos.where((todo) => !todo.isCompleted).length}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 18.0, top: 5.0, right: 18.0, bottom: 5.0),
              child: ListView.builder(
                itemCount: filteredTodos.length,
                itemBuilder: (context, index) {
                  final todo = filteredTodos[index];
                  return ListTile(
                    leading: Transform.scale(
                      scale: 1.2,
                      child: Checkbox(
                        value: todo.isCompleted,
                        onChanged: (value) {
                          todoProvider.toggleTodo(todoProvider.todos.indexOf(todo));
                        },
                      ),
                    ),
                    title: Text(
                      todo.title,
                      style: TextStyle(
                        fontSize: 18,
                        decoration: todo.isCompleted ? TextDecoration.lineThrough : TextDecoration.none,
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.delete,
                        size: 30,
                      ),
                      onPressed: () {
                        todoProvider.removeTodo(todoProvider.todos.indexOf(todo));
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
