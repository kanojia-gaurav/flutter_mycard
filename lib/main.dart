import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  home: GauravCard(),
));
class GauravCard extends StatefulWidget {
  @override
  _GauravCardState createState() => _GauravCardState();
}

class _GauravCardState extends State<GauravCard> {

  int hackerRank = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gaurav's Card", style: TextStyle(
          color: Colors.grey[700],
          fontSize: 22.0,
        ),),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.greenAccent[400],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            hackerRank +=1;
          });
      },

        child: Icon(Icons.add),
        backgroundColor: Colors.green[500],
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/gk2.png'),
                radius: 90.0,
              ),
            ),

            Divider(
              height: 50.0,
              color: Colors.white,
            ),

            Text(
              'Name:',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 5,),
            Text(
              'Gaurav Kanojia',
              style: TextStyle(
                color: Colors.green[500],
                letterSpacing: 2.0,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),

            Text(
              'Current Hacker Rank Level:',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 5,),
            Text(
              'Golden Batch / $hackerRank star',
              style: TextStyle(
                color: Colors.green[500],
                letterSpacing: 2.0,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),

            Row(
              children: [

                Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                SizedBox(width: 10,),
                Text(
                  'kanojiagaurav1235@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 18,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [

                Icon(
                  Icons.phone_android,
                  color: Colors.black,
                ),
                SizedBox(width: 10,),
                Text(
                  '8080780345',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 18,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ],
            ),

          ],
        ),
      ),
    );

  }
}

