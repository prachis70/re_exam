import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Chekout extends StatefulWidget {
  const Chekout({super.key});

  @override
  State<Chekout> createState() => _ChekoutState();
}

class _ChekoutState extends State<Chekout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chekout'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
        Container(
        padding: EdgeInsets.only(top: 30),
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
        )
          ],
      ),
    );
  }
}
