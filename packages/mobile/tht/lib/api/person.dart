import 'package:dio/dio.dart';
import 'package:tht/model/person.dart';

class PersonApi {
  Future<Iterable<Person>> index() async {
    Dio dio = new Dio();
    Response response = await dio.get('http://192.168.200.65:3337/person');

    if (response.statusCode == 200) {
      return response.data.map<Person>((person) {
        return Person.fromJson(person);
      }).toList();
    } else {
      return new List<Person>();
    }
  }
}
