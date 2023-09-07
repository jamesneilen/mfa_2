import 'package:flutter/material.dart';
//import 'package:mfa_2/note_pad_screen.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.minimize,
          color: Color.fromARGB(193, 10, 0, 0),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  child: Text('Sort by alert time'),
                ),
              ];
            },
            child: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'To-dos',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search to-dos',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.circle_outlined,
                          size: 15,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'welcome to To-do',
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.circle_outlined,
                          size: 15,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Tap on to-do content to edit it',
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.circle_outlined,
                          size: 15,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'create your to-dos by typing',
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
