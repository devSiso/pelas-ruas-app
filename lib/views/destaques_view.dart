import 'package:flutter/material.dart';

class SliderHighlights extends StatelessWidget {
  final _whiteTexts = new TextStyle(
      color: Colors.white, fontSize: 14.3, fontWeight: FontWeight.bold);

  final _txtStyle = new TextStyle(
      fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return new SizedBox(
        height: 263.0,
        width: 300.0,
        child: new Container(
            padding: EdgeInsets.only(top: 20.0),
            height: 263.0,
            color: Colors.white,
            child: new Column(children: <Widget>[
              new Center(
                  child: new Text("POSTS EM DESTAQUE", style: _txtStyle)),
              new Padding(padding: new EdgeInsets.only(bottom: 20.0)),
              new Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 150.0,
                color: Colors.white,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 10.0, right: 10.0)),
                    Container(
                      width: 220.0,
                      child: new Container(
                          constraints: new BoxConstraints.expand(
                            height: 187.0,
                          ),
                          padding: new EdgeInsets.only(
                              left: 16.0, bottom: 8.0, right: 16.0),
                          decoration: new BoxDecoration(
                            image: new DecorationImage(
                              image: new AssetImage('assets/arbore.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new Text(
                                  "Arborização da orla do Guaíba comprometida pela poluição",
                                  style: _whiteTexts,
                                  textAlign: TextAlign.center),
                              new Padding(
                                  padding: new EdgeInsets.only(bottom: 25.0)),
                              new Container(
                                  width: 70.0,
                                  child: new Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      new Column(
                                        children: <Widget>[
                                          new Image.asset(
                                              "assets/supportWhited.png",
                                              scale: 0.8),
                                          new Padding(
                                              padding: new EdgeInsets.only(
                                                  bottom: 5.0)),
                                          new Text("650", style: _whiteTexts)
                                        ],
                                      ),
                                      new Column(
                                        children: <Widget>[
                                          new Image.asset(
                                              "assets/commentWhited.png",
                                              scale: 0.8),
                                          new Padding(
                                              padding: new EdgeInsets.only(
                                                  bottom: 5.0)),
                                          new Text("350", style: _whiteTexts)
                                        ],
                                      )
                                    ],
                                  ))
                            ],
                          )),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10.0, right: 10.0)),
                    Container(
                      width: 220.0,
                      child: new Container(
                          constraints: new BoxConstraints.expand(
                            height: 187.0,
                          ),
                          padding: new EdgeInsets.only(
                              left: 16.0, bottom: 8.0, right: 16.0),
                          decoration: new BoxDecoration(
                            image: new DecorationImage(
                              image: new AssetImage('assets/bike.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new Text(
                                  "Viaduto do metrô da Cavalhada cada vez mais perigoso …",
                                  style: _whiteTexts,
                                  textAlign: TextAlign.center),
                              new Padding(
                                  padding: new EdgeInsets.only(bottom: 25.0)),
                              new Container(
                                  width: 70.0,
                                  child: new Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      new Column(
                                        children: <Widget>[
                                          new Image.asset(
                                              "assets/supportWhited.png",
                                              scale: 0.8),
                                          new Padding(
                                              padding: new EdgeInsets.only(
                                                  bottom: 5.0)),
                                          new Text("710", style: _whiteTexts)
                                        ],
                                      ),
                                      new Column(
                                        children: <Widget>[
                                          new Image.asset(
                                              "assets/commentWhited.png",
                                              scale: 0.8),
                                          new Padding(
                                              padding: new EdgeInsets.only(
                                                  bottom: 5.0)),
                                          new Text("921", style: _whiteTexts)
                                        ],
                                      )
                                    ],
                                  ))
                            ],
                          )),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10.0, right: 10.0)),
                    Container(
                      width: 220.0,
                      child: new Container(
                          constraints: new BoxConstraints.expand(
                            height: 187.0,
                          ),
                          padding: new EdgeInsets.only(
                              left: 16.0, bottom: 8.0, right: 16.0),
                          decoration: new BoxDecoration(
                            image: new DecorationImage(
                              image: new AssetImage('assets/bike.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new Text(
                                  "Viaduto do metrô da Cavalhada cada vez mais perigoso …",
                                  style: _whiteTexts,
                                  textAlign: TextAlign.center),
                              new Padding(
                                  padding: new EdgeInsets.only(bottom: 25.0)),
                              new Container(
                                  width: 70.0,
                                  child: new Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      new Column(
                                        children: <Widget>[
                                          new Image.asset(
                                              "assets/supportWhited.png",
                                              scale: 0.8),
                                          new Padding(
                                              padding: new EdgeInsets.only(
                                                  bottom: 5.0)),
                                          new Text("710", style: _whiteTexts)
                                        ],
                                      ),
                                      new Column(
                                        children: <Widget>[
                                          new Image.asset(
                                              "assets/commentWhited.png",
                                              scale: 0.8),
                                          new Padding(
                                              padding: new EdgeInsets.only(
                                                  bottom: 5.0)),
                                          new Text("921", style: _whiteTexts)
                                        ],
                                      )
                                    ],
                                  ))
                            ],
                          )),
                    ),
                    Padding(padding: EdgeInsets.only(right: 20.0)),
                  ],
                ),
              )
            ])));
  }
}
