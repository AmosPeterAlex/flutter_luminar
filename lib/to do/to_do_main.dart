import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("To_Do_Box");
  runApp(MaterialApp(
    home: Hive_crud(),
    debugShowCheckedModeBanner: false,
  ));
}

class Hive_crud extends StatefulWidget {
  const Hive_crud({super.key});

  @override
  State<Hive_crud> createState() => _Hive_crudState();
}

class _Hive_crudState extends State<Hive_crud> {
  final todo = Hive.box("To_Do_box");
  var tname_ctrl = TextEditingController();
  var tcont_ctrl = TextEditingController();
  List<Map<String, dynamic>> task = [];

  @override
  void initState() {
    read_task();
    super.initState();
  }

  void read_task() {
    final task_from_hive = todo.keys.map((key) {
      final single_task = todo.get(key);
      return {
        "id": key,
        "tname": single_task['Task name'],
        "tcont": single_task["task cont"]
      };
    }).toList();
    setState(() {
      task = task_from_hive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TO DO"),
        ),
        body: task.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                    color: Colors.blue, backgroundColor: Colors.red),
              )
            : ListView.builder(
                itemCount: task.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.task),
                      title: Text(task[index]["tname"]),
                      subtitle: Text(task[index]["tcont"]),
                      trailing: Wrap(
                        children: [
                          IconButton(
                              onPressed: () {
                                Create_edit_task(task[index]["id"]);
                              },
                              icon: Icon(Icons.edit)),
                          IconButton(
                              onPressed: () {
                                delete_task(task[index]["id"]);
                              },
                              icon: Icon(Icons.delete)),
                        ],
                      ),
                    ),
                  );
                }),
        floatingActionButton: FloatingActionButton(
            tooltip: 'Add Notes To Do',
            child: Icon(Icons.add),
            onPressed: () {
              Create_edit_task(null);
            }));
  }

  void Create_edit_task(int? itemkey) {
    if (itemkey != null) {
      final current_task =
          task.firstWhere((element) => element["id"] == itemkey);
      tname_ctrl.text = current_task["tname"];
      tcont_ctrl.text = current_task["tcont"];
    }
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            child: Padding(
              padding: EdgeInsets.only(
                  top: 15,
                  left: 15,
                  right: 15,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: tname_ctrl,
                    decoration: InputDecoration(hintText: "Task name"),
                  ),
                  TextField(
                    controller: tcont_ctrl,
                    decoration: InputDecoration(hintText: "Task Content"),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (itemkey == null) {
                          Create_task({
                            'Task name': tname_ctrl.text.trim(),
                            "task cont": tcont_ctrl.text.trim(),
                          });
                        } else if (itemkey != null) {
                          Edit_task(itemkey, {
                            'Task name': tname_ctrl.text.trim(),
                            "task cont": tcont_ctrl.text.trim(),
                          });
                        }
                        ;
                        tname_ctrl.text = "";
                        tcont_ctrl.text = "";
                      },
                      child: Text(itemkey == null ? "create task" : "Edittask"))
                ],
              ),
            ),
          );
        });
  }

  Future<void> Create_task(Map<String, String> newtask) async {
    await todo.add(newtask);
    read_task();
  }

  Future<void> Edit_task(int itemkey, Map<String, String> editedtask) async {
    await todo.put(itemkey, editedtask);
    read_task();
  }

  Future<void> delete_task(int itemkey) async {
    await todo.delete(
      itemkey,
    );
    read_task();
  }
}
