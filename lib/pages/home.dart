import 'package:find_blood/pages/abpositive.dart';
import 'package:find_blood/pages/onegetive.dart';
import 'package:find_blood/pages/opositive.dart';
import 'package:flutter/material.dart';

class FindBlood extends StatefulWidget {
  const FindBlood({super.key});

  @override
  State<FindBlood> createState() => _FindBloodState();
}

class _FindBloodState extends State<FindBlood> {

  bloodcard(type, view, but){
    return Container(
      height: 150,
      width: 120,
      child: Card(
        color: Color(0xff252525),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(type,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
              SizedBox(
                height: 10,
              ),
              
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return but;
                  },),);
                }, child: Text(view),),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Find Blood',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff252525),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                bloodcard('O+', 'View All', OPositive()),
                bloodcard('O-', 'View All', ONegetive()),
                bloodcard('AB+', 'View All', ABPositive()),
              ],
             ),
            
          ],
        )
      ),
    );
  }
}