import 'package:flutter/material.dart';

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
}