import 'package:flutter/material.dart';
import 'myData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );

  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:_buildScrollableView(context),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildScrollableView(BuildContext context){
    return CustomScrollView(
      slivers: [
        SliverAppBar(title:Text('Hello')),
        SliverList(
          delegate: SliverChildListDelegate(
              Kitten.kittens.map((name) => _buildTitle(context,name)).toList()),

        )
      ],
    );
  }


 Widget _buildTitle(BuildContext context,Kitten kitten){
    final style = Theme.of(context).textTheme.title;
    return Row(
      children: <Widget>[
        Text(kitten.name,
          style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.0),
        ),
      ],
    );

 }
 Widget _buildScrollableView01(BuildContext context){
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight:300,
          floating: false,
          pinned: false,
          flexibleSpace:FlexibleSpaceBar(
            title:Text("My City"),
            background: Image.network("https://images.pexels.com/photos/3586966/pexels-photo-3586966.jpeg"
              , fit:BoxFit.fill,),
          ) ,
        ),
        SliverFillRemaining(
          child:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.display1,
                ),
              ],
            ),
          ),


        ),

      ],
    );
  }
}
