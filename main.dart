import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(// #1 material app: sets for overall style and theme
    title: 'Week 1 - All 8 Widgets',
    theme: ThemeData(primarySwatch: Colors.teal),
    home: const HomeScreen(),
  );  
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold( 
    // #2 Scaffold: sets for page layout
    appBar: AppBar(title: const Text('All Widgets')),
    //#3 AppBar: sets to hold the title bar at the top of the screen
    body: Center(  
      child: Container(  
        padding: const EdgeInsets.all(20),
        child: Column(  
          children: [
            Row(
            //#5 Row:  this is for the horizontal lines, it sets to lines items up from left to right
              children: [
                const Icon(Icons.star),
                const Text('Flutter'),
                //#4 Text('Flutter'): it sets to show the title on the screen
              ],
            ),
          ],
        ),
        //#6 Column: this is for vertical lines, it sets for lines items up from top to bottom
      ),
      //#8 Container: sets for adding space
    ),
    //#7 Center: sets to keep everything exactly in center
  );
}
