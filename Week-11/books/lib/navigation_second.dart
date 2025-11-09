import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text('Pink - 100'),
              onPressed: () {
                color = Colors.pink.shade100;
                Navigator.pop(context, color);
              },
            ),
            ElevatedButton(
              child: const Text('Green - 200'),
              onPressed: () {
                color = Colors.green.shade200;
                Navigator.pop(context, color);
              },
            ),
            ElevatedButton(
              child: const Text('Blue - 200'),
              onPressed: () {
                color = Colors.blue.shade200;
                Navigator.pop(context, color);
              },
            ),
          ],
        ),
      ),
    );
  }
}
