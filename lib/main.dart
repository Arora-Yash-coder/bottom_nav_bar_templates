import 'package:bottom_nav_bar_templates/curved_nav_bar.dart';
import 'package:bottom_nav_bar_templates/modern_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

int selectedButton = 0;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

Widget bottomBarSelector() {
  if (selectedButton == 0) {
    return const ModernBar();
  } else {
    return const CurvedBar();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedButton = 0;
                });
              },
              child: const Text('Modern Nav Bar'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedButton = 1;
                });
              },
              child: const Text('Curved Nav Bar'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.purple.shade200,
      bottomNavigationBar: bottomBarSelector(),
    );
  }
}
