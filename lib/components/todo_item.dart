import 'package:flutter/material.dart';
import 'package:workf/constants/colors.dart';
import 'package:workf/models/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  final onTodoChanged;
  final onDeleteItem;

  const TodoItem(
      {Key? key,
      required this.todo,
      required this.onDeleteItem,
      required this.onTodoChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: ListTile(
        onTap: () {
          onTodoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: Icon(
          todo.isMark ? Icons.check_box : Icons.check_box_outline_blank,
          color: wf_blue,
        ),
        title: Text(
          todo.content!,
          style: TextStyle(
            fontSize: 16,
            color: wf_black,
            decoration: todo.isMark ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: wf_white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: IconButton(
            color: wf_red,
            iconSize: 20,
            icon: Icon(Icons.delete),
            onPressed: () {
              onDeleteItem(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
