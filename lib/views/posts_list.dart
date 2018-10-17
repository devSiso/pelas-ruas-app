// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'dart:async';
// import 'package:flutter/material.dart';
// import '../UI/post.dart';
// import 'post_view.dart';

// class PostsTemplate extends StatefulWidget {
//   @override
//   State createState() => PostsState();
// }

// class PostsState extends State<PostsTemplate> {
//   List<Post> posts;
//   List<PostView> publicacoes;

//   @override
//   void initState() {
//     super.initState();
//     this.posts = new List<Post>();
//     this.publicacoes = new List<PostView>();
//     this.test();
//   }

//   void test() async {
//     await this.startPosts();
//   }

//   Future startPosts() async {
//     print("startPost # 1");
//     List data = await this.getData();
//     await this.fillPosts(data);
//   }

//   Future<List> getData() async {
//     print("getData");
//     http.Response response = await http.get(
//         Uri.encodeFull("http://10.10.4.97:3000/posts"),
//         headers: {"Accept": "application/json"});
//     List data = json.decode(response.body);
//     return data;
//   }

//   Future fillPosts(List list) async {
//     print("fillPosts # 3");
//     list.forEach((item) {
//       this.posts.add(new Post(item['distance'], item['photoUrl'], item['name'],
//           item['when'], item['followers'], item['comments'], item['soluted']));
//     });
//     print("fillPosts # 4");
//   }

//   List<PostView> allPosts() {
//     publicacoes.add(new PostView(item.distance, item.photoUrl, item.name,
//         item.when, item.followers, item.comments, item.soluted));

//     print(posts.length);
//     return publicacoes;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Column(
//       children: this.allPosts(),
//     );
//   }
// }
