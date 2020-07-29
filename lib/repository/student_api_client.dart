import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:liste_etudiant/model/models.dart';

class StudentApiClient {
  static const ROOT = 'http://10.0.2.2/students.php';
  static const _CREATE_TABLE_ACTION = 'CREATE_TABLE';
  static const _GET_ALL_ACTION = 'GET_ALL';
  static const _ADD_STD_ACTION = 'ADD_STD';
  static const _UPDATE_STD_ACTION = 'UPDATE_STD';
  static const _DELETE_STD_ACTION = 'DELETE_STD';

  //Method to create the table students
  Future<String> createTable() async {
    try {
      //add the parameter to pass to the request.
      var map = Map<String, dynamic>();
      map['action'] = _CREATE_TABLE_ACTION;
      final response = await http.post(ROOT, body: map);
      print('Create Table Response: ${response.body}');
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return "error";
      }
    } catch (e) {
      return "error";
    }
  }

  //Method to get all students
  Future<List<Student>> getStudents() async {
    try {
      //add the parameter to pass to the request.
      var map = Map<String, dynamic>();
      map['action'] = _GET_ALL_ACTION;
      final response = await http.post(ROOT, body: map);
      print('getStudents Response: ${response.body}');
      if (200 == response.statusCode) {
        List<Student> list = parseResponse(response.body);
        return list;
      } else {
        return List<Student>();
      }
    } catch (e) {
      return List<Student>(); // return an empty list
    }
  }

  /// [decode] json data and [convert] it from map to list
  List<Student> parseResponse(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Student>((json) => Student.fromJson(json)).toList();
  }

  //Method to add Student to database
  Future<String> addStudents(
      String name, String phone, String subjetc) async {
    try {
      //add the parameter to pass to the request.
      var map = Map<String, dynamic>();
      map['action'] = _GET_ALL_ACTION;
      map['name'] = name;
      map['phone'] = phone;
      map['subject'] = subjetc;
      final response = await http.post(ROOT, body: map);
      print('addStudents Response: ${response.body}');
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return "error";
      }
    } catch (e) {
      return "error";
    }
  }

  //Method to update Student to database
  // It is the same that add methode only that we've an id
  Future<String> updateStudents(
      String id, String name, String phone, String subjetc) async {
    try {
      //add the parameter to pass to the request.
      var map = Map<String, dynamic>();
      map['action'] = _GET_ALL_ACTION;
      map['std_id'] = id;
      map['name'] = name;
      map['phone'] = phone;
      map['subject'] = subjetc;
      final response = await http.post(ROOT, body: map);
      print('addStudents Response: ${response.body}');
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return "error";
      }
    } catch (e) {
      return "error";
    }
  }

  // Method to Delete an Employee from Database...
  Future<String> deleteEmployee(String stdId) async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = _DELETE_STD_ACTION;
      map['std_id'] = stdId;
      final response = await http.post(ROOT, body: map);
      print('deleteStudent Response: ${response.body}');
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return "error";
      }
    } catch (e) {
      return "error"; // returning just an "error" string to keep this simple...
    }
  }
}
