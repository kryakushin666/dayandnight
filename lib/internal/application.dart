import 'package:flutter/material.dart';

import '../presentation/home.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Day And Night APP',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
