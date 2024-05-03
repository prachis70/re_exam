import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:re_exam/utils/list.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Homepage', style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
        leading: Icon(Icons.menu),
      ),
      body: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(onTap: () {
                setState(() {
                  selectedindex=index;
                  Navigator.of(context).pushNamed('/home');
                });
              }, child: Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    image:  DecorationImage(
                      fit: BoxFit.cover,
                      image:  AssetImage('assets/imgs/p1.jpg'),
                    ),
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black),
                
                
                  ),
                ),
              ),
              Container(

                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  image:  DecorationImage(
                    fit: BoxFit.cover,
                    image:  AssetImage('assets/imgs/p2.jpg'),
                  ),
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black),
                ),
              ),
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  image:  DecorationImage(
                    fit: BoxFit.cover,
                    image:  AssetImage('assets/imgs/p3.jpg'),
                  ),
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black),

                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
