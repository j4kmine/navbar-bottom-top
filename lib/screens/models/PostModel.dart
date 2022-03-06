class Post{
   int? userId;
   int? id;
   String? title;
   String? body;
  bool? is_tap ;
  Post({this.userId,this.id,this.title,this.body,this.is_tap});
  factory Post.fromJson(Map<String,dynamic>json){
    return Post(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        body: json['body'],
        is_tap: false,
    );
  }
}