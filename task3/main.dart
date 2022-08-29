import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var counter = 0;
  List <String> l = [
    'https://q-xx.bstatic.com/xdata/images/hotel/840x460/208086215.jpg?k=af5b31fd51781a293cb97b7bbb56f38e27f114f0d5ece2eca4424ea41b33da5d&o=',
    'King',
    'A room with a king_size',
    'https://cf.bstatic.com/xdata/images/hotel/max1024x768/243099672.jpg?k=64d63bd48b0e0ec8a93d0a1ca002d1613d0c4777b636ea1120094e91407f0066&o=&hp=1',
    'Double',
    'A room to 2 people',
    'https://images.unsplash.com/photo-1540518614846-7eded433c457?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmVkcm9vbXxlbnwwfHwwfHw%3D&w=1000&q=80',
    'Family',
    'A room to 3 or 4 people',
    'https://s7d2.scene7.com/is/image/ritzcarlton/pnrqz-king-50661983?\$XlargeViewport100pct\$',
    'Single',
    'A room for one person',
    'https://images.unsplash.com/photo-1616594039964-ae9021a400a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGJlZHJvb218ZW58MHx8MHx8&w=1000&q=80',
    'Avatar',
    'An avatar room ',
    'https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWwlMjByb29tfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'poss',
    'A poss room',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          leading: Icon(Icons.arrow_back),
          title: Text("Rooms List"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            //rossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(child: Image.network(l[counter]),height: 100,width: 100,),
                          Text("${l[counter+1]} Room"),
                          Icon(Icons.arrow_upward)
                        ],
                      ),
                    ),
                    Text(
                      l[counter+2],
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(child: Image.network(l[counter+3]),height: 100,width: 100,),
                          Text("${l[counter+4]} Room"),
                          Icon(Icons.arrow_upward)
                        ],
                      ),
                    ),
                    Text(
                      l[counter+5],
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){setState(() {
            if(counter < 12)counter+=6;
            else counter=0;
          });},
          child: Text('Next'),
        ),
      ),
    );
  }
}