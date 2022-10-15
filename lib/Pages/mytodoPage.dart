

import 'package:flutter/material.dart';
import 'package:homework5/Pages/todo.dart';


class mytodoPage extends StatefulWidget {
  const mytodoPage({Key? key}) : super(key: key);

  @override
  State<mytodoPage> createState() => _mytodoPageState();
}
List<ToDo> todoList = [
  ToDo(
    id: '01',
    todoText: 'ทำการบ้านครั้งที่ 4 วิชา Mobile App Dev',
    done: true,
  ),
  ToDo(
    id: '02',
    todoText: 'ทำการบ้านครั้งที่ 5 วิชา Mobile App Dev',
    done: false,
  ),
  ToDo(
    id: '03',
    todoText: 'ทำโปรเจ็ควิชา Mobile App Dev',
    done: false,
  ),
];

class _mytodoPageState extends State<mytodoPage> {
  List<bool> _list=[];
  bool _homework4 = true;
  bool _homework5 = false;
  bool _project = false;
  final _input = TextEditingController();

  void _handleDelete(){

  }
  void _addToDo(String toDo) {

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Icon(Icons.check_box),
        title: Text('My ToDo'),
      ),backgroundColor: Colors.black12,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          color: Colors.white,
                        ),
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child:
                                      Checkbox(
                                        value: _homework4,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            _homework4 = value!;
                                          });
                                          // onChanged จะทำงานเมื่อมีการเปลี่ยนสถานะของ Checkbox
                                          // โดยสถานะใหม่จะถูกส่งมาที่พารามิเตอร์ value
                                        },
                                      ),
                                    ),
                                    _homework4 == true ? Text('ทำการบ้านครั้งที่ 4 วิชา Mobile App Dev',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.black))
                                        :Text('ทำการบ้านครั้งที่ 4 วิชา Mobile App Dev',style: TextStyle(color: Colors.black))
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                FlatButton(
                                  onPressed: _handleDelete,
                                  child:
                                  Icon(Icons.delete,color: Colors.grey,),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                  ),
                  SizedBox(width: 20,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        color: Colors.white,
                      ),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child:
                                    Checkbox(
                                      value: _homework5,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          _homework5 = value!;
                                        });
                                        // onChanged จะทำงานเมื่อมีการเปลี่ยนสถานะของ Checkbox
                                        // โดยสถานะใหม่จะถูกส่งมาที่พารามิเตอร์ value
                                      },
                                    ),
                                  ),
                                  _homework5 == true ? Text('ทำการบ้านครั้งที่ 5 วิชา Mobile App Dev',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.black))
                                      :Text('ทำการบ้านครั้งที่ 5 วิชา Mobile App Dev',style: TextStyle(color: Colors.black))
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              FlatButton(
                                onPressed: _handleDelete,
                                child:
                                Icon(Icons.delete,color: Colors.grey,),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        color: Colors.white,
                      ),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child:
                                    Checkbox(
                                      value: _project,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          _project = value!;
                                        });
                                        // onChanged จะทำงานเมื่อมีการเปลี่ยนสถานะของ Checkbox
                                        // โดยสถานะใหม่จะถูกส่งมาที่พารามิเตอร์ value
                                      },
                                    ),
                                  ),
                                  _project == true ? Text('ทำโปรเจ็ค วิชา Mobile App Dev',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.black))
                                      :Text('ทำโปรเจ็ค วิชา Mobile App Dev',style: TextStyle(color: Colors.black))
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              FlatButton(
                                onPressed: _handleDelete,
                                child:
                                Icon(Icons.delete,color: Colors.grey,),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                ],
              ),
            ],
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      controller: _input,
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter new ToDo',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        //_addToDoItem(_controller.text);
                      });
                    },
                    child: Container(
                        width: 50.0,
                        height: 30.0,
                        alignment: Alignment.center,
                        child: Text(
                          'ADD',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        )),
                    customBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
