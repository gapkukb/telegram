import 'package:flutter/material.dart';

part 'pulzz.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(children: [const Pulzz()]));
  }
}
