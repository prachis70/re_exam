
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
        title: Text(
          'Homepage',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
        leading: Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(30),
              height: 200,
              width: 380,
              decoration: BoxDecoration(color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(
                  color: Colors.black,blurRadius: 5,
                  spreadRadius: 4,
                )],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/imgs/p1.jpg'),
                )
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: [
                ...List.generate(
                  pro.length,
                  (index) => GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedindex=index;
                        Navigator.of(context).pushNamed('/det');
                      });
                    },
                    child: box1(
                      img: pro[index]['img'],
                       name: pro[index]['name'], price: pro[index]['price'].toInt(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container box1({required String img,required int price,required String name }) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 180,
      width: 180,
      decoration: BoxDecoration(
        boxShadow: [
           BoxShadow( color: Colors.black),
        ],
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(img),
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black),
      ),
    );
  }
}
