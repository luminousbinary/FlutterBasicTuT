import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import ''; // google fonts 11:30

class TaskHomeScreen extends StatelessWidget {
  const TaskHomeScreen({Key? key}) : super(key: key);

  static const routeName = '/task-app-home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task Manager"),
      ),
      body: Center(
        child: Text("Never Give Up\n No Task Added Yet Sha!"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.purple,
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (BuildContext context) => Container(
            padding: const EdgeInsets.all(30),
            height: 260,
            color: Color.fromARGB(255, 210, 107, 228),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Add Task",
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Icon(Icons.close),
                    )
                  ],
                ),
                Divider(thickness: 2),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Enter task',
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Container(
                        width: (MediaQuery.of(context).size.width / 2) - 40,
                        child: ElevatedButton(
                          onPressed: () => print("peressed reset"),
                          child: Text(
                            "Remove",
                          ),
                        ),
                      ),
                      Container(
                        width: (MediaQuery.of(context).size.width / 2) - 40,
                        child: ElevatedButton(
                          onPressed: () => print("confirm pressed"),
                          child: Text(
                            "Confirm",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
