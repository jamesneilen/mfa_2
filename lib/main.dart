import 'package:flutter/material.dart';
import 'package:mfa_2/database/ntdatabase.dart';
// import 'package:note_pad/database/ntdatabase.dart';
import 'note_pad_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NoteDatabase.instance.db;
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true).copyWith(),
      home: const NotePadScreen(),
    );
  }
}


// class _NoteAppState extends State<NoteApp> {
//   int currentPage = 0;

//   static const List<Widget> _widgetOptions = <Widget>[NoteApp(), ToDo()];
//   @override
//   Widget build(BuildContext context) {
//     SafeArea(child: 
//      Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Notes',
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: 30,
//           ),
//         ),
//       ),
//       body: _widgetOptions.elementAt(currentPage),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.blue,
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(
//             Radius.circular(40),
//           ),
//         ),
//         onPressed: () {
//           if (currentPage == 0) {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const Notes(),
//               ),
//             );
//             const NoteList();
//           } else if (currentPage == 1) {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => const ToDo()));
//             // showBottomSheet(context: context);
//           }
//         },
//         child: const Icon(
//           Icons.add,
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: (currentIndex) {
//           setState(() {
//             currentPage = currentIndex;
//           });
//         },
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.note,
//             ),
//             label: 'Notes',
//           ),
//           BottomNavigationBarItem(
//             backgroundColor: Color.fromARGB(255, 39, 38, 38),
//             icon: Icon(
//               Icons.task_alt,
//             ),
//             label: 'To-dos',
//           ),
//         ],
//         type: BottomNavigationBarType.fixed,
//         currentIndex: currentPage,
//         selectedItemColor: Colors.blueAccent,
//         // elevation: 5,
//       ),
//      ),
//     );
//   }
// }
