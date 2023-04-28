import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return const MaterialApp(
  //     home: Scaffold(
  //       body: Center(
  //         child: Text('Hello World!'),
  //       ),
  //     ),
  //   );
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       body: Center(
  //         child: Container(
  //           margin: const EdgeInsets.all(10.0),
  //           color: Colors.amber[600],
  //           width: 48.0,
  //           height: 48.0,
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       body: Center(
  //         child: GridView.count(
  //           primary: false,
  //           padding: const EdgeInsets.all(20),
  //           crossAxisSpacing: 10,
  //           mainAxisSpacing: 10,
  //           crossAxisCount: 2,
  //           children: <Widget>[
  //             Container(
  //               padding: const EdgeInsets.all(8),
  //               child: const Text("He'd have you all unravel at the"),
  //               color: Colors.teal[100],
  //             ),
  //             Container(
  //               padding: const EdgeInsets.all(8),
  //               child: const Text('Heed not the rabble'),
  //               color: Colors.teal[200],
  //             ),
  //             Container(
  //               padding: const EdgeInsets.all(8),
  //               child: const Text('Sound of screams but the'),
  //               color: Colors.teal[300],
  //             ),
  //             Container(
  //               padding: const EdgeInsets.all(8),
  //               child: const Text('Who scream'),
  //               color: Colors.teal[400],
  //             ),
  //             Container(
  //               padding: const EdgeInsets.all(8),
  //               child: const Text('Revolution is coming...'),
  //               color: Colors.teal[500],
  //             ),
  //             Container(
  //               padding: const EdgeInsets.all(8),
  //               child: const Text('Revolution, they...'),
  //               color: Colors.teal[600],
  //             ),
  //           ],
  //         )
  //        ),
  //       ),
  //     );
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       body: ListView(
  //         padding: const EdgeInsets.all(8),
  //         children: <Widget>[
  //           Container(
  //             height: 50,
  //             color: Colors.amber[600],
  //             child: const Center(child: Text('Entry A')),
  //           ),
  //           Container(
  //             height: 50,
  //             color: Colors.amber[500],
  //             child: const Center(child: Text('Entry B')),
  //           ),
  //           Container(
  //             height: 50,
  //             color: Colors.amber[100],
  //             child: const Center(child: Text('Entry C')),
  //           ),
  //         ],
  //       )
  //     ),
  //   );
  // }

  // @override
  // Widget build(BuildContext context) {
  // final List<String> entries = <String>['A', 'B', 'C'];
  // final List<int> colorCodes = <int>[600, 500, 100];
  //   return MaterialApp(
  //     home: Scaffold(
  //         body: ListView.builder(
  //         padding: const EdgeInsets.all(8),
  //         itemCount: entries.length,
  //         itemBuilder: (BuildContext context, int index) {
  //           return Container(
  //             height: 50,
  //             color: Colors.amber[colorCodes[index]],
  //             child: Center(child: Text('Entry ${entries[index]}')),
  //           );
  //         }
  //       ),
  //     ),
  //   );
  // }

  // @override
  // Widget build(BuildContext context) {
  //   final List<String> entries = <String>['A', 'B', 'C'];
  //   final List<int> colorCodes = <int>[600, 500, 100];
  //   return MaterialApp(
  //       home: Scaffold(
  //           body: ListView.separated(
  //           padding: const EdgeInsets.all(8),
  //           itemCount: entries.length,
  //           itemBuilder: (BuildContext context, int index) {
  //           return Container(
  //             height: 50,
  //             color: Colors.amber[colorCodes[index]],
  //             child: Center(child: Text('Entry ${entries[index]}')),
  //           );
  //         },
  //           separatorBuilder: (BuildContext context, int index) => const Divider(),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C'];
    final List<int> colorCodes = <int>[600, 500, 100];
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 90,
              height: 90,
              color: Colors.green,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.blue,
            ),
          ],
        )
      ),
    );
  }
}
