class Post {
  int distance;
  String photoUrl;
  String name;
  String when;
  int followers;
  int comments;
  bool soluted;
  final List<Post> posts;

  Post(this.distance, this.photoUrl, this.name, this.when, this.followers,
      this.comments, this.soluted,
      [this.posts = const <Post>[]]);
}