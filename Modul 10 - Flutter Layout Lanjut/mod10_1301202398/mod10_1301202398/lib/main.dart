import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MOD10-1301202398'),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              pinned: true,
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Demo'),
              ),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.teal[100 * (index % 9)],
                    child: Text('Grid Item $index'),
                  );
                },
                childCount: 20,
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 50.0,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100 * (index % 9)],
                    child: Text('List Item $index'),
                  );
                },
                childCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter layout demo',
//       home: buildHomePage('Strawberry Pavlova Recipe - 1301202398'),
//     );
//   }

//   Widget buildHomePage(String title) {
//     const titleText = Padding(
//       padding: EdgeInsets.all(5),
//       child: Text(
//         'Strawberry Pavlova',
//         style: TextStyle(
//           fontWeight: FontWeight.w800,
//           letterSpacing: 0.5,
//           fontSize: 15,
//         ),
//       ),
//     );

//     const subTitle = Text(
//       'Pavlova is a meringue-based dessert named after the Russian ballerina '
//       'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
//       'topped with fruit and whipped cream.',
//       textAlign: TextAlign.center,
//       style: TextStyle(
//         fontFamily: 'Georgia',
//         fontSize: 10,
//       ),
//     );

//     // #docregion ratings, stars
//     var stars = Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Icon(Icons.star, color: Colors.green[500]),
//         Icon(Icons.star, color: Colors.green[500]),
//         Icon(Icons.star, color: Colors.green[500]),
//         const Icon(Icons.star, color: Colors.black),
//         const Icon(Icons.star, color: Colors.black),
//       ],
//     );
//     // #enddocregion stars

//     final ratings = Container(
//       padding: const EdgeInsets.all(5),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           stars,
//           const Text(
//             '170 Reviews',
//             style: TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.w800,
//               fontFamily: 'Roboto',
//               letterSpacing: 0.5,
//               fontSize: 10,
//             ),
//           ),
//         ],
//       ),
//     );
//     // #enddocregion ratings

//     // #docregion iconList
//     const descTextStyle = TextStyle(
//       color: Colors.black,
//       fontWeight: FontWeight.w800,
//       fontFamily: 'Roboto',
//       letterSpacing: 0.5,
//       fontSize: 8,
//       height: 2,
//     );

//     // DefaultTextStyle.merge() allows you to create a default text
//     // style that is inherited by its child and all subsequent children.
//     final iconList = DefaultTextStyle.merge(
//       style: descTextStyle,
//       child: Container(
//         padding: const EdgeInsets.all(5),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Column(
//               children: [
//                 Icon(Icons.kitchen, color: Colors.green[500]),
//                 const Text('PREP:'),
//                 const Text('25 min'),
//               ],
//             ),
//             Column(
//               children: [
//                 Icon(Icons.timer, color: Colors.green[500]),
//                 const Text('COOK:'),
//                 const Text('1 hr'),
//               ],
//             ),
//             Column(
//               children: [
//                 Icon(Icons.restaurant, color: Colors.green[500]),
//                 const Text('FEEDS:'),
//                 const Text('4-6'),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//     // #enddocregion iconList

//     // #docregion leftColumn
//     final leftColumn = Container(
//       padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
//       child: Column(
//         children: [
//           titleText,
//           subTitle,
//           ratings,
//           iconList,
//         ],
//       ),
//     );
//     // #enddocregion leftColumn

//     final mainImage = Image.asset(
//       'images/pavlova.jpg',
//       fit: BoxFit.cover,
//     );

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       // #docregion body
//       body: Center(
//         child: Container(
//           margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
//           height: 600,
//           child: Card(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   width: 450,
//                   child: leftColumn,
//                 ),
//                 mainImage,
//               ],
//             ),
//           ),
//         ),
//       ),
//       // #enddocregion body
//     );
//   }
// }

// class MainApp extends StatelessWidget {
//   const MainApp({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   const children2 = <Widget>[
  //     FlutterLogo(),
  //     Expanded(
  //       child: Text(
  //         "Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bugs faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.",
  //       ),
  //     ),
  //     Icon(Icons.sentiment_very_satisfied),
  //   ];
  //   return MaterialApp(
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: const Text('MOD10-1301202398'),
  //       ),
  //       body: Center(
  //         child: Row(
  //           children: children2,
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // @override
  // Widget build(BuildContext context) {
  //   const children2 = <Widget>[
  //     FlutterLogo(),
  //     Text(
  //         "Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bugs faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.",
  //     ),
  //     Icon(Icons.sentiment_very_satisfied),
  //   ];
  //   return MaterialApp(
  //     home: Scaffold(
  //       body: Center(
  //         child: Row(
  //           children: children2,
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // @override
  // Widget build(BuildContext context) {
  //   const children2 = <Widget>[
  //     Text('Deliver features faster'),
  //     Text('Craft beautiful UIs'),
  //     Expanded(
  //       child: FittedBox(
  //         fit: BoxFit.contain, // otherwise the logo will be tiny
  //         child: FlutterLogo(),
  //       ),
  //     ),
  //   ];
  //   return MaterialApp(
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: const Text('MOD10-1301202398'),
  //       ),
  //       body: Center(
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           mainAxisSize: MainAxisSize.min,
  //           children: children2,
  //         ),
  //       ),
  //     ),
  //   );
  // }

// }