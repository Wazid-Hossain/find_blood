import 'package:flutter/material.dart';

class OPositive extends StatelessWidget {
  const OPositive({super.key});

  detils(name, add,  mnum){
    return  Container(
                height: 200,
                width: 165,
                
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
                );
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff252525),
      appBar: AppBar(
        title: Text('All O(+) Persons',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                detils('Wazid Hossain', 'Colony', '01784880361'),
                detils('Sujon (Gandu)', 'Colony', '01796723507'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                detils('Wahid Hossain', 'Colony', '01737997860'),
                detils('Mehedi Hasan Anik', 'Colony', '01773208036'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                detils('Jony Bhai (Bkash)', 'Colony', '01911663468'),
                detils('Jakir (daddu)', 'Colony', '01764948406'),
              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              // prestice what happned if use column
              children: [
                detils('Jony Bhai (Bkash)', 'Colony', '01911663468'),
                detils('Jony Bhai (Bkash)', 'Colony', '01911663468'),
              ],
            ),
            Row(),
            Row(),
            Row(),
            Row(),
            
          ],
        )
      ),
    );
  }
}