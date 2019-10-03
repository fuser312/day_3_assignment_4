import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Strawberry Pavlova'),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red, width: 2),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(8.0, 24.0, 10.0, 2.0),
                    padding: EdgeInsets.fromLTRB(4.0, 2.0, 4.0, 8.0),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Strawberry pavlova",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
                    child: Center(
                      child: Text(
                        "pavlova is a meringue-based"
                            " dessert names after the Russian"
                            " ballerine Arina Pavlova."
                            "Pavlova features a crisp crust and "
                            "soft, light inside, topped with fruit"
                            "and whipped cream. ",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              size: 12,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.star,
                              size: 12,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.star,
                              size: 12,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.star,
                              size: 12,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.star,
                              size: 12,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Container(
                          child: Text('170 Reviews'),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin:
                    EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 12.0),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(Icons.thumb_up),
                            Text('PREP'),
                            Text('25 Min'),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(Icons.timer),
                            Text('COOK'),
                            Text('1 Hr'),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(Icons.fastfood),
                            Text('FEEDS'),
                            Text('4-6'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child:
              Container(child: Image(image: AssetImage('assets/food.png'))),
            ),
          ],
        ),
      ),

    ),
      ),


  );
}
