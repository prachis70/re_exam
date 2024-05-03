import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:re_exam/utils/list.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cartpage',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                        image: AssetImage('assets/imgs/p1.jpg'),
                    ),
                  border: Border.all(color: Colors.black),
                  // color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 150,
                width: 160,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top:20,left: 30),
                  child: Row(
                    children: [
                      Text('price\n 599/-',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                      GestureDetector(onTap:(){
                        setState(() {
                          cartlist.removeAt(selectedindex);
                        });
                      },child: Icon(Icons.delete)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: GestureDetector(onTap:(){
                  Navigator.of(context).pushNamed('/ck');
                } ,
                  child: Container(
                    height: 80,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:Center(child: Text('Chekout',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      );
  }
}
