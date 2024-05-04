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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(cartlist.length, (index) => buildRow(
              index: index,
            )),
            Column(
              children: [
                Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius:  BorderRadius.circular(20),
                    border: Border.all(color: Colors.black),
                    color: Colors.grey,
                  ),
                  child:Row(
                    children: [
                      Column(
                        children: [
                          Center(child: Text(' \n\n\n   total qty  = 1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                          Center(child: Text('    total amount = 599/-',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                          Center(child: Text('    gst =  10%}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),


                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: GestureDetector(onTap:(){
                    Navigator.of(context).pushNamed('/ck');
                  },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30,top: 190),
                      child:  GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:Center(child: Text('Chekout',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)),
                          ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      );
  }

  Row buildRow({required int index}) {
    return Row(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 150,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: AssetImage(cartlist[index]['img'],),
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
                        cartlist.removeAt(index);
                      });
                    },child: Icon(Icons.delete)),
                  ],
                ),
              ),
            ),
          ],
        );
  }
}
