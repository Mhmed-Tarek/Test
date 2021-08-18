class todo {



  int id, userid;

  String title;

  bool    completed;


  todo({
    required this.id,
    required this.userid,
    required this.title,
    required this.completed,
    //required this.lastName,
  //  required this.image,
  });


  factory todo.fromJson( Map<String, dynamic> jsonObject ) {

    return todo(
      id: jsonObject['id'],
      userid: jsonObject['userId'],
      title: jsonObject['title'],
      completed: jsonObject['completed'],

    );

  }


}
