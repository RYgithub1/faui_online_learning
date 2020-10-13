import 'package:flutter/material.dart';


class TrendCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(top:32, bottom:8, left:8),
          child: Text("Best courses", style: TextStyle(fontSize:20, fontWeight: FontWeight.bold)),
        ),

        Card(
          color: Colors.teal[900],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.lightBlue[100],
                  child: ListTile(
                    leading: Icon(Icons.school, color: Colors.green[200]),
                    trailing: Text('Communication'),
                  ),
                ),
                SizedBox(height:3),
                Container(
                  color: Colors.lightBlue[100],
                  child: ListTile(
                    leading: Icon(Icons.school, color: Colors.green[200]),
                    trailing: Text('Digital Marketing'),
                  ),
                ),
                SizedBox(height:3),
                Container(
                  color: Colors.lightBlue[100],
                  child: ListTile(
                    leading: Icon(Icons.school, color: Colors.green[200]),
                    trailing: Text('UX Research'),
                  ),
                ),
                SizedBox(height:3),
                Container(
                  color: Colors.lightBlue[100],
                  child: ListTile(
                    leading: Icon(Icons.school, color: Colors.green[200]),
                    trailing: Text('Consulting and Sales'),
                  ),
                ),
                SizedBox(height:3),
                Container(
                  color: Colors.lightBlue[100],
                  child: ListTile(
                    leading: Icon(Icons.school, color: Colors.green[200]),
                    trailing: Text('Block chane'),
                  ),
                ),
                SizedBox(height:3),
                Container(
                  color: Colors.lightBlue[100],
                  child: ListTile(
                    leading: Icon(Icons.school, color: Colors.green[200]),
                    trailing: Text('Automation and Sensor'),
                  ),
                ),
                SizedBox(height:3),
                Container(
                  color: Colors.lightBlue[100],
                  child: ListTile(
                    leading: Icon(Icons.school, color: Colors.green[200]),
                    trailing: Text('Network ans Game'),
                  ),
                ),
              ],
            ),
          ),
        ),

        Container(
          width: double.infinity,
          child: FlatButton(
            onPressed: (){},
            child: Text("Trendy"),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            color: Colors.pink[200],
            textColor: Colors.blue[900],
            padding: EdgeInsets.symmetric(vertical:20),
          ),
        ),
      ],
    );
  }
}