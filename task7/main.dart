import 'package:flutter/material.dart';
import 'package:session/task_data.dart';
import 'package:session/task_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}

/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:session/to%20do%20project/todo_add.dart';

void main() {
  runApp(MaterialApp(
    home: todo(),
  ),);
}

class todo extends StatefulWidget {
  const todo({Key? key}) : super(key: key);

  @override
  _todoState createState() => _todoState();
}

class _todoState extends State<todo> {
  bool? isChecked=false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(
              isScrollControlled: true,
                context: context,
                builder: (context) => SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: addTask(),
                  ),
                ));
          },
          backgroundColor: Colors.blue,
          child: Icon(Icons.add),
        ),
        backgroundColor: Colors.blue,
        body: Container(
          padding: EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.playlist_add_check,size: 50,color: Colors.white,),
            //SizedBox(height: 3,),
            Text('ToDo List',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            //SizedBox(height: 3,),
            Text('Task 12',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 5,),
            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: ListView(
                children: [
                  ListTile(
                    title: Text('go shopping',
                      style: TextStyle(
                        fontSize: 15,
                      ),),
                    trailing: Checkbox(
                      activeColor: Colors.blue,
                      value: isChecked,
                      onChanged: (newValue){
                        setState(() {
                          isChecked=newValue;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text('go shopping',
                      style: TextStyle(
                        fontSize: 15,
                      ),),
                    trailing: Checkbox(
                      activeColor: Colors.blue,
                      value: isChecked,
                      onChanged: (newValue){
                        setState(() {
                          isChecked=newValue;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text('go shopping',
                      style: TextStyle(
                        fontSize: 15,
                      ),),
                    trailing: Checkbox(
                      activeColor: Colors.blue,
                      value: isChecked,
                      onChanged: (newValue){
                        setState(() {
                          isChecked=newValue;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),)
          ],
        ),
        ),
      ),
    );
  }
}
*/

