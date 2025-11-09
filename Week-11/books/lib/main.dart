import 'dart:async';

import 'package:async/async.dart';
import 'package:books/geolocation.dart';
import 'package:books/navigation_dialog.dart';
import 'package:books/navigation_first.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum Vidi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const NavigationDialogScreen(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';

  Future<Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/xdQgEQAAQBAJ';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }

  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }

  late Completer completer;

  Future getNumber() {
    completer = Completer<int>();
    calculate();
    return completer.future;
  }

  Future calculate() async {
    try {
      await Future.delayed(const Duration(seconds: 5));
      completer.complete(42);
    } catch (e) {
      completer.completeError(e);
    }
  }

  Future returnFG() async {
    FutureGroup<int> futureGroup = FutureGroup<int>();
    futureGroup.add(returnOneAsync());
    futureGroup.add(returnTwoAsync());
    futureGroup.add(returnThreeAsync());
    futureGroup.close();
    final futures = await futureGroup.future;

    // final futures = Future.wait<int>([
    //   returnOneAsync(),
    //   returnTwoAsync(),
    //   returnThreeAsync(),
    // ]);
    int total = 0;
    for (var num in futures) {
      total += num;
    }
    setState(() {
      result = total.toString();
    });
  }

  Future<int> returnError() async {
    await Future.delayed(const Duration(seconds: 2));
    throw Exception('Something terrible happened!');
  }

  Future handleError() async {
    try {
      await returnError();
    } catch (e) {
      setState(() {
        result = e.toString();
      });
    } finally {
      print('complete');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Back from the Future - Vidi')),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                handleError();
                // returnError()
                //     .then((value) {
                //       setState(() {
                //         result = 'Success';
                //       });
                //     })
                //     .catchError((onError) {
                //       setState(() {
                //         result = onError.toString();
                //       });
                //     })
                //     .whenComplete(() => print('Complete'));
                // returnFG();
                // getNumber()
                //     .then((value) {
                //       setState(() {
                //         result = value.toString();
                //       });
                //     })
                //     .catchError((e) {
                //       result = 'An error occurred';
                //     });
                // count();
                // setState(() {});
                // getData()
                //     .then((value) {
                //       result = value.body.toString().substring(0, 450);
                //       setState(() {});
                //     })
                //     .catchError((_) {
                //       result = 'An error occurred';
                //       setState(() {});
                //     });
              },
              child: Text('Go!'),
            ),
            const Spacer(),
            Text(result),
            const Spacer(),
            const CircularProgressIndicator(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
