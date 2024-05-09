class Todo {
  String? id;
  String? content;
  bool isMark;

// constructor
  Todo({required this.id, required this.content, this.isMark = false});

  static List<Todo> todoList() {
    return [
      Todo(id: "1", content: "This is first app in flutter.", isMark: true),
      Todo(id: "2", content: "design and implmentation."),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
      Todo(id: "3", content: "Let's run this app.", isMark: true),
    ];
  }
}
