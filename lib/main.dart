import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("Flutter layout Demo"),
          centerTitle: true,
        ),
        body: Column(
          children: [Image.asset("assets/lake.jpg"), titleSection,_buildIconButton(),texttion],
        ));
  }

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //color:Colors.red,
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, //粗體
                  ),
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Text('41'),
      ],
    ),
  );

  Widget _buildIconButton(){
    return Container(
      color: Colors.yellow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _Buttonfontion(Icon(Icons.call,color: Colors.blue),"CALL"),
          _Buttonfontion(Icon(Icons.near_me,color: Colors.blue), 'ROUTE'),
          _Buttonfontion(Icon(Icons.share,color: Colors.blue), 'SHARE'),

        ],
      ),
    );
  }

  Widget _Buttonfontion(Icon icon, String s){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        Text(s)
      ],
    );
  }

  Widget texttion = Container(
    padding: const EdgeInsets.all(32),
      child: Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
      'Alps. Situated 1,578 meters above sea level, it is one of the '
      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
      'half-hour walk through pastures and pine forest, leads you to the '
      'lake, which warms to 20 degrees Celsius in the summer. Activities '
      'enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,
      ),
  );
}
