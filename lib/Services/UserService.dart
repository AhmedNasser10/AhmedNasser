import 'package:app1/Models/Users.dart';
import 'package:dio/dio.dart';

class UserService {
  String baseUrl = "https://jsonplaceholder.typicode.com/";
  String users = "users";

  Future<List<User>> getUsers() async {
    List<User> usersList = [];
    Dio dio = new Dio();
    Response response = await dio.get("$baseUrl"+"$users");
    var data = response.data;
    data.forEach((i) {
      User user = User.fromJson(i);
      usersList.add(user);
    });
    return usersList;
  }
}
