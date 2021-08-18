import 'package:flutter/material.dart';
import 'package:iti_summer_course_tutorial/components/custom_card.dart';
import 'package:iti_summer_course_tutorial/data/todolist.dart';
import 'package:iti_summer_course_tutorial/models/custom_card_model.dart';
import 'package:iti_summer_course_tutorial/models/todo.dart';
//import 'package:iti_summer_course_tutorial/views/screens/details/details_screen.dart';
//import 'package:iti_summer_course_tutorial/views/screens/registeration/registration_screen.dart';

class TodoScreen extends StatefulWidget {
  @override
  _TodoScreenState createState() {
    return _TodoScreenState();
  }
}

class _TodoScreenState extends State<TodoScreen> {

  int _counter = 0;


  late Future<List<todo>> todoFuture;

  @override
  void initState() {
    super.initState();
    todoFuture = todoRepo().gettodo();
  }

  @override
  Widget build(BuildContext context) {
    return getHomeWidget();
  }

  Widget getHomeWidget() {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Todo List Ma Man"),
        centerTitle: true,
      ),

      // floatingActionButton: FloatingActionButton(
      //   child: Icon(
      //     Icons.add,
      //   ),
      //   onPressed: _navigateToRegistration,
      // ),

      body: getUsersGrid(),
    );
  }

  // void _navigateToRegistration() async {
  //   bool registerationResult = await Navigator.of(context)
  //       .push(MaterialPageRoute(builder: (context) => RegisterationScreen()));
  //   if (registerationResult != null && registerationResult) {
  //     setState(() {
  //       usersFuture = UsersRepo().getUsers();
  //     });
  //   }
  // }

  Widget getUsersGrid() {
    return FutureBuilder<List<todo>>(
        future: todoFuture,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.error.toString(),
              ),
            );
          } else if (snapshot.hasData) {
            List<todo> users = snapshot.data!;
            return ListView(
              //crossAxisCount: 1,
              padding: EdgeInsets.all(16),
              //mainAxisSpacing: 10,
              //crossAxisSpacing: 10,
              children: List.generate(
                  users.length,
                      (index) => Column(

                        children: [



Text( " ${users[index].id} "),
 Text( " ${users[index].userid} "),
 Text( " ${users[index].title} "),
 Text( " ${users[index].completed} "),
                      // onCardClick: () {
                      //   print("Clicked user id ${users[index].id}");
                      //   Navigator.of(context).push(
                      //     MaterialPageRoute(
                      //       builder: (context) => UserDetailsScreen(
                      //         selectedUser: users[index],
                      //       ),
                      //     ),
                      //   );
                      // },



                    Divider( thickness: 5 , ),

                        ], ),   ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
