import 'package:flutter/material.dart';
import '../views/post_view.dart';
import '../views/destaques_view.dart';

class MainCollapsingToolbar extends StatefulWidget {
  @override
  _MainCollapsingToolbarState createState() => _MainCollapsingToolbarState();
}

class _MainCollapsingToolbarState extends State<MainCollapsingToolbar> {
  final _txtStyle = new TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 76.0,
                floating: false,
                pinned: true,
                backgroundColor: Colors.white,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: new Image.asset(
                    "assets/pelasruas.png",
                    scale: 1.3,
                  ),
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.transparent,
                    tabs: [
                      new Tab(
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(Icons.menu),
                            new Padding(
                                padding: new EdgeInsets.only(right: 3.0)),
                            new Text(
                              "POSTS",
                              style: _txtStyle,
                            )
                          ],
                        ),
                      ),
                      Tab(
                          child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(Icons.map),
                          new Padding(padding: new EdgeInsets.only(right: 3.0)),
                          new Text(
                            "MAPA",
                            style: _txtStyle,
                          )
                        ],
                      )),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              new Container(
                  color: Colors.brown.withOpacity(0.1),
                  child: new ListView(
                    children: <Widget>[
                      new PostView(
                          100,
                          "https://avatars2.githubusercontent.com/u/498852?s=400&",
                          "Paulo Silva",
                          "hoje",
                          10,
                          24,
                          true),
                      new Padding(padding: new EdgeInsets.all(25.0)),
                      new SliderHighlights(),
                      new Padding(padding: new EdgeInsets.all(25.0)),
                      new PostView(
                          300,
                          "https://avatars2.githubusercontent.com/u/498852?s=400&",
                          "Marlon Santos",
                          "ontem",
                          40,
                          16,
                          false),
                      new Padding(padding: new EdgeInsets.all(25.0)),
                      new PostView(
                          50,
                          "http://3.bp.blogspot.com/-A6KOQRnejIg/VZwfS9rN2rI/AAAAAAAAA6U/Dy7dx--7a5M/s1600/profile-photo-lovely-witches-round.png",
                          "Tatiana Lima",
                          "Ultima semana",
                          86,
                          31,
                          true),
                    ],
                  )),
              new Container(child: new Center(child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Icon(Icons.map),
                  new Padding(padding: new EdgeInsets.only(bottom: 7.0)),
                  new Text("MAPA")
                ],
              )))
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
