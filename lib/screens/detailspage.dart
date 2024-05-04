import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:re_exam/utils/list.dart';

class Detailspage extends StatefulWidget {
  const Detailspage({super.key});

  @override
  State<Detailspage> createState() => _DetailspageState();
}

class _DetailspageState extends State<Detailspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detailspage',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: Column(
         children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(20),
              height: 200,
              width: 200,
              decoration: BoxDecoration(color: Colors.cyan,
              image: DecorationImage(
                fit: BoxFit.cover,
                 image: AssetImage(pro[selectedindex]['img']),
              ),
              borderRadius: BorderRadius.circular(20),

              border: Border .all(color: Colors.black)),
            ),
          ),
          Container(
          margin: EdgeInsets.all(20),
         height: 200,
         width: 400,
         decoration: BoxDecoration(color: Colors.cyan,
             borderRadius: BorderRadius.circular(20),
             border: Border .all(color: Colors.black)),
            child:Center(child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('like sweaters, shirts, pants, dresses, and so on.\n  Your favorite piece of clothing might be your purple polka dotted tights.\n Clothing is made of fabric and covers our bodies, keeps them warm or \n protects them from the sun, insects,\n..................................⭐⭐⭐⭐⭐'),
            ))
            ,
         ),
           InkWell(onTap: () {
             cartlist.add(pro[selectedindex]);
             Navigator.pushNamed(context, '/cart');
           },
             child: Container(
               margin: EdgeInsets.all(80),
               height: 90,
               width: 200,
               decoration: BoxDecoration(color: Colors.cyan,
                   borderRadius: BorderRadius.circular(20),
                   border: Border .all(color: Colors.black)),
               child: Center(child: Text('ADD TO CART',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
                   ),
           ),
    ]
    ),
    );
  }
}
