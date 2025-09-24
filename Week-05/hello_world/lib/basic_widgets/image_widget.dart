import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage("logo_polinema.webp"),
      width: MediaQuery.of(context).size.width / 2,
    );
  }
}
