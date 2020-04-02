import 'package:flutter/material.dart';
import 'myData.dart';

Widget buildScrollableView(BuildContext context){
  return CustomScrollView(
    slivers: [
      SliverAppBar(
        expandedHeight:300,
        floating: true,
        pinned: true,
        flexibleSpace:FlexibleSpaceBar(
          title:Text("Pippo"),
          background: Image.network("https://images.pexels.com/photos/3586966/pexels-photo-3586966.jpeg"
            , fit:BoxFit.fill,),
        ) ,
      ),
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
      Padding(
        padding: const EdgeInsets.all(26.0),
        child: Text(kitten.name,
          style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 0.5),
        ),
      ),
    ],
  );

}

