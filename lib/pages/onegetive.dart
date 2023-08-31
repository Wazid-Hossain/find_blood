import 'package:flutter/material.dart';

class ONegetive extends StatelessWidget {
  const ONegetive({super.key});

  detils(String name,String add, String mnum){
    return  Center(
      child: Container(
                  height: 200,
                  width: 380,
                  
                  child: Card(
                    color: Color(0xff262628),
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Column(
                        children: [
                          Text(name, style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          ),
                          SizedBox(height: 10,),
                           Text(add, style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 10,),
                           Text(mnum, style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                          ),
                         
                            ],
                          )
                      ),
                    ),
                  ),
    );
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff252525),
      appBar: AppBar(
        title: Text('All O(-) Persons',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            // to use column and see what happend
           detils("Alif Sakib", "Dhaka", "017"),
           detils("Unknown", "Unkonow", "01784")
            
          ],
        )
      ),
    );
  }
}