import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox('to_do_Box');
  runApp(MaterialApp(home: HiveCrud(),));
}

class HiveCrud extends StatefulWidget {
  const HiveCrud({super.key});

  @override
  State<HiveCrud> createState() => _HiveCrudState();
}

class _HiveCrudState extends State<HiveCrud> {
  List<Map<String,dynamic>>task=[];
  final mybox=Hive.box('to_do_Box');

  @override
  void initState() {
    load_or_read_Task();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo'),
      ),
      body: task.isEmpty ? Center(child: CircularProgressIndicator(),)
          :ListView.builder(
        itemCount: task.length,
          itemBuilder: (ctx,index) {
          final mytask=task[index];   //fetch each single map from list
        return Card(
          child: ListTile(
            title: Text(task[index]['taskname']),
            subtitle: Text(mytask['taskcount']),
            trailing: Wrap(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                IconButton(onPressed: (){}, icon: Icon(Icons.delete))
              ],
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: ()=> showTask(context,null),
          label: const Text('Create Task'),
      icon: const Icon(Icons.add),
      ),
    );
  }
final task_controller=TextEditingController();
  final content_controller=TextEditingController();

void showTask(BuildContext context, int? itemkey) {  //itemkey is similar to id in sqflite
    showModalBottomSheet(
      isScrollControlled: true,
        context: context,
        builder: (context){
          return Container(
            padding: EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
              bottom: MediaQuery.of(context).viewInsets.bottom+120
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                 controller: task_controller,
                  decoration: InputDecoration(border: OutlineInputBorder(),
                  hintText: "Task Name"),
                ),
                const SizedBox(height: 15),
                TextField(
                controller: content_controller,
                  decoration: const InputDecoration(border: OutlineInputBorder(),
                  hintText: "Task Content"),
                ),
                ElevatedButton(onPressed: ()
          {
            if (task_controller.text != "" && content_controller.text != "") {
              if (itemkey == null) {
                createTask({
                  'name': task_controller.text.trim(),
                  'content': content_controller.text.trim()
                });
              } else {
                updateTask(itemkey, {
                  'name': task_controller.text.trim(),
                  'content': content_controller.text.trim()
                });
              }
            }
            content_controller.text="";
            task_controller.text="";
            Navigator.of(context).pop();
                }, child: Text(itemkey==null? 'Create Task':'Update Task'))
              ],
            ),
          );
        });
}

 Future<void> createTask(Map<String, dynamic> task) async{
  await mybox.add(task);
  }

  void updateTask(int? itemkey, Map<String, String> map) {}

  void load_or_read_Task(){
  final task_from_hive=mybox.keys.map((key) {
    //fetch all the keys from hive in ascending order
    final value=mybox.get(key);
    return{
      'id':key,
      'taskname':value['name'],
      'taskcontent':value['content']
    };
  }).toList();

  setState(() {
    task=task_from_hive.reversed.toList();
  });
  }
}