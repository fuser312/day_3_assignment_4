import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Food(),
    ),
  ));
}

class Food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return portrait();
    } else {
      return landscape();
    }
  }
}

Widget title = Text(
  'Strawberry Pavlova',
  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18), textAlign: TextAlign.center,
);
Widget description = Text(
  'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova.'
      ' It is a meringue dessert with a crisp crust and soft, light inside,'
      ' usually topped with fruit and whipped cream.',
  textAlign: TextAlign.center,
);

Widget landscape() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                title,
                description,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Wrap(
                      children: <Widget>[
                        StarIconsRow(),
                        SizedBox(
                          width: 8,
                        ),
                        Text('170 reviews'),
                      ],
                    ),
                  ],
                ),
                LastSegment()
              ],
            ),
          ),
        ),
      ),
      Expanded(
          flex: 2,
          child: FoodImage()),
    ],
  );
}

Widget portrait() {
  return Column(
    children: <Widget>[
      Expanded(
          flex: 1,
          child:  FoodImage()),
      Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              title,
              description,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Wrap(
                    children: <Widget>[
                      StarIconsRow(),
                      SizedBox(
                        width: 8,
                      ),
                      Text('170 reviews'),
                    ],
                  ),
                ],
              ),
             LastSegment()
            ],
          ),
        ),
      )
    ],
  );
}

class FoodImage extends StatelessWidget {
  const FoodImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/food.png'),
      fit: BoxFit.fitHeight,
    );
  }
}

class StarIconsRow extends StatelessWidget {
  const StarIconsRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Icon starIcon = Icon(
      Icons.star,
      size: 16,
    );
    return Row(
      children: <Widget>[
        starIcon,
        starIcon,
        starIcon,
        starIcon,
        starIcon,
      ],
    );
  }
}

class LastSegment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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

    );
  }
}

