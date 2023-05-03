import 'package:flutter/material.dart';

import 'dashboard.dart';

void main() {
  runApp(todo());
}

class todo extends StatelessWidget {
  const todo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dashboard(),
    );
  }
}
