import 'package:flutter/material.dart';
import 'package:workf/components/todo_item.dart';
import 'package:workf/constants/colors.dart';
import 'package:workf/models/todo.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final allTodos = Todo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wf_BG_color,
      appBar: AppBar(
          backgroundColor: wf_blue,
          elevation: 5,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.menu,
                color: wf_white,
                size: 30,
              ),
              SizedBox(
                height: 40,
                width: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Icon(Icons.account_circle_sharp,
                      color: wf_white, size: 40),
                ),
              )
            ],
          )),
      body: Column(
        children: [
          // Search Box Section
          Container(
              decoration: const BoxDecoration(
                color: wf_BG_color,
              ),
              padding: const EdgeInsets.all(16),
              child: SearchBox()),

          Container(
              decoration: const BoxDecoration(
                color: wf_BG_color,
              ),
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent tasks",
                    style: TextStyle(
                        color: wf_blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  Icon(
                    Icons.add_box,
                    color: wf_blue,
                    size: 30,
                  ),
                ],
              )),
          // List Section
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: ListView(children: [
                for (Todo todos in allTodos)
                  TodoItem(
                      todo: todos,
                      onDeleteItem: _deleteItem,
                      onTodoChanged: _toggleCheckBox),
              ]),
            ),
          )
        ],
      ),
    );
  }

// search box
  Widget SearchBox() {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: wf_white,
          )),
      child: TextField(
          onChanged: (value) {
            print(value);
          },
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: wf_black,
              size: 20,
            ),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, maxWidth: 25),
            border: InputBorder.none,
            hintText: "Search",
            alignLabelWithHint: true,
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
            ),
          ),
          textAlign: TextAlign.left),
    );
  }

// toggle check
  void _toggleCheckBox(Todo todo) {
    todo.isMark = !todo.isMark;
    print(todo.isMark);
  }

  // delete items
  void _deleteItem(String id) {
    print(id);
    allTodos.removeWhere((item) => item.id == id);
  }
}
