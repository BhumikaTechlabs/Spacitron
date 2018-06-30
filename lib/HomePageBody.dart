import 'package:flutter/material.dart';
import 'package:spacitron/Planet.dart';
import 'package:spacitron/PlanetRow.dart';

class HomePageBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    /*return new Expanded(
    child: new Image(
      image: new AssetImage("assets/img/space.png"),
      //height: 400.0,
      //width: 600.0,
    ),
    );*/


    return new Expanded(
      child: new Stack(
        children: <Widget>[
      new Image(
      image: new AssetImage("assets/img/space.png"),
      ),
      new Container(
        //color: new Color(0xFF000000),
        child: new CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: <Widget>[
            new SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              sliver: new SliverFixedExtentList(
                itemExtent: 152.0,
                delegate: new SliverChildBuilderDelegate(
                      (context, index) => new PlanetRow(planets[index]),
                  childCount: planets.length,

                ),
              ),
            ),
          ],
        ),
      ),
    ],
      ),
    );
  }

}