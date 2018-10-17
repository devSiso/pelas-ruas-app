import 'package:flutter/material.dart';

class PostView extends StatelessWidget {
  final int distance;
  final String photoUrl;
  final String name;
  final String when;
  final int followers;
  final int comments;
  final bool soluted;

  final _greyTexts = new TextStyle(
      color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.w700);

  final _whiteTexts = new TextStyle(
      color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w700);

  final _titleStyle = new TextStyle(
      color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold);

  PostView(this.distance, this.photoUrl, this.name, this.when, this.followers,
      this.comments, this.soluted);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: new Container(
          child: new Column(
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              new Flexible(
                  child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Padding(
                      padding: new EdgeInsets.fromLTRB(10.0, 10.0, 25.0, 15.0),
                      child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, magna aliqua",
                          style: _titleStyle)),
                ],
              )),
              new Padding(
                padding: new EdgeInsets.fromLTRB(5.0, 10.0, 25.0, 0.0),
                child: new Container(
                  color: Colors.white,
                  height: 75.0,
                  child: new Padding(
                      padding: new EdgeInsets.only(top: 25.0),
                      child: Text("${this.distance}m", style: _greyTexts)),
                ),
              ),
            ],
          ),
          new Container(
              constraints: new BoxConstraints.expand(
                height: 300.0,
              ),
              padding:
                  new EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: new Stack(
                children: <Widget>[
                  new Positioned(
                      left: 0.0,
                      bottom: 7.0,
                      child: new Container(
                        child: new CircleAvatar(
                            backgroundImage: NetworkImage(this.photoUrl),
                            radius: 25.0),
                      )),
                  this.soluted
                      ? new Center(
                          child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Image.asset("assets/soluted.png"),
                            Padding(padding: new EdgeInsets.only(bottom: 10.0)),
                            new Text("SOLUCIONADO", style: _whiteTexts)
                          ],
                        ))
                      : new Container(),
                  new Positioned(
                    left: 65.0,
                    bottom: 20.0,
                    child: new Text('${this.name}', style: _whiteTexts),
                  ),
                  new Positioned(
                    right: 10.0,
                    bottom: 20.0,
                    child: new Text("${this.when}", style: _whiteTexts),
                  ),
                ],
              )),
          new Padding(
              padding: new EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 15.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Container(
                      width: 125.0,
                      child: new Row(
                        children: <Widget>[
                          new IconButton(
                            icon: new Image.asset("assets/support.png"),
                            onPressed: () => print("support"),
                          ),
                          new IconButton(
                            icon: new Image.asset("assets/comment.png"),
                            onPressed: () => print("comment"),
                          ),
                        ],
                      )),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Text("${this.followers} seguindo", style: _greyTexts),
                      new Padding(
                        padding: new EdgeInsets.only(right: 20.0),
                      ),
                      new Text("${this.comments} comentários",
                          style: _greyTexts),
                    ],
                  )
                ],
              ))
        ],
      )),
    );
  }
}
