import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    home: food()
      ),


  );
}

class food extends StatefulWidget {
  @override
  _foodState createState() => _foodState();
}

class _foodState extends State<food> {
    Widget _layOut(){
      Orientation orientation = MediaQuery.of(context).orientation;
      if(orientation == Orientation.landscape){
        return Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(8.0, 40.0, 10.0, 2.0),
                    padding: EdgeInsets.fromLTRB(4.0, 2.0, 4.0, 8.0),

                    child: Center(
                      child: Text(
                        "Strawberry Pavolva", textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
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
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      alignment: WrapAlignment.center,
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              size: 24,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.star,
                              size: 24,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.star,
                              size: 24,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.star,
                              size: 24,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.star,
                              size: 24,
                              color: Colors.grey,
                            ),
                            Container(
                              child: Text('170 Reviews'),
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                  Container(
                    margin:
                    EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(Icons.check_circle, color: Colors.green,),
                            Text('PREP'),
                            Text('25 Min'),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(Icons.timer, color: Colors.green,),
                            Text('COOK'),
                            Text('1 Hr'),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(Icons.perm_identity, color: Colors.green,),
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
              Container(
                child: OverflowBox(
                  alignment: Alignment(-1, 0),
                  minHeight: 0.0,
                  minWidth: 0.0,
                  maxWidth: double.infinity,
                  child: Image
                    (image: AssetImage('assets/food.png'), fit: BoxFit.cover,),
                ),
              ),
            ),
          ],
        );
      }

      else if(orientation == Orientation.portrait){
        return Column(
          children: <Widget>[
            Expanded (
              flex: 1,
              child:
              Container(
                child: OverflowBox(
                  //alignment: Alignment(-1, 0),
                  //minHeight: 0.0,
                  //minWidth: 0.0,
                  //maxWidth: double.infinity,
                  child: Image
                    (image: AssetImage('assets/food.png'), fit: BoxFit.cover,),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 24, 0, 0),
                        child: Center(
                          child: Text(
                            "Strawberry Pavolva",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold, ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
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
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      alignment: WrapAlignment.center,
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                size: 24,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.star,
                                size: 24,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.star,
                                size: 24,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.star,
                                size: 24,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.star,
                                size: 24,
                                color: Colors.grey,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                child: Text('170 Reviews'),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    margin:
                    EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(Icons.check_circle, color: Colors.green,),
                            Text('PREP'),
                            Text(""),
                            Text('25 Min'),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(Icons.timer, color: Colors.green,),
                            Text('COOK'),
                            Text(""),
                            Text('1 Hr'),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(Icons.perm_identity, color: Colors.green,),
                            Text('FEEDS'),
                            Text(""),
                            Text('4-6'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      }
    }
      //body: Container(
        //decoration: BoxDecoration(
          //border: Border.all(color: Colors.red, width: 2),
        //),

      //),

      @override
      Widget build(BuildContext context) {
    return Scaffold(
      body: _layOut());

  }
}



