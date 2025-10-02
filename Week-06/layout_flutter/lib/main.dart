import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            /* soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    'Inferno',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text('Rome, Italy', style: TextStyle(color: Colors.grey[500])),
              ],
            ),
          ),
          /* soal 3*/
          Icon(Icons.star, color: Colors.red[500]),
          const Text("41"),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Inferno, also known by its filename de_inferno, is a multiplayer map in the Counter-Strike series of first-person shooter video games by Valve Corporation. The map was first created for the original Counter-Strike in a 2001 update and has subsequently appeared in each series entry.'
        '\nVidi Joshubzky Saviola '
        '2341720112. ',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Vidi Joshubzky Saviola dan 2341720112',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Vidi Joshubzky Saviola | 2341720112'),
        ),
        body: ListView(
          children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.asset(
              'imgs/inferno.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              left: 16,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16.0,
                ),
                color: Colors.black54,
                child: const Text(
                  'Inferno',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        titleSection,
        Card(
          elevation: 4.0,
          margin: EdgeInsets.all(16.0),
          child: Column(children: [buttonSection, textSection]),
        ),
      ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
