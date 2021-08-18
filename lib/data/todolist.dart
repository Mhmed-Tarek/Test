import 'package:iti_summer_course_tutorial/services/http_handler.dart';
import 'package:iti_summer_course_tutorial/models/todo.dart';


class todoRepo {

  Future<List<todo>> gettodo() async {

    HttpWrapper httpWrapper = new HttpWrapper();

    Iterable response = await httpWrapper.httpGet("todos");

    //print("Users response");

    //print(registrationResponse);

    //Iterable usersIterable = registrationResponse['data'];

    List<todo> todolist =
    response.map( (item) => todo.fromJson(item) ).toList();

    return todolist;
  }


}