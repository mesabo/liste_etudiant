import 'package:async/async.dart';
import 'package:liste_etudiant/model/models.dart';
import 'student_api_client.dart';
import 'package:meta/meta.dart';

class StudentRepository {
  final StudentApiClient studentApiClient;

  StudentRepository({@required this.studentApiClient})
      : assert(studentApiClient != null);

  ///fetch to create table students
  Future<String> createTable() async {}

  ///fetch to get all students datas
  Future<List<Student>> getStudents() async {
    return studentApiClient.getStudents();
  }

  ///fetch to add only one student
  Future<String> addStudents(String name, String phone, String subjetc) async {
    return studentApiClient.addStudents(name, phone, subjetc);
  }

  ///fetch to update only one student
  Future<String> updateStudent(
      String id, String name, String phone, String subjetc) async {
    return studentApiClient.updateStudents(id, name, phone, subjetc);
  }

  ///fetch to delete only one student
  Future<String> deleteEmployee(String stdId) async {
    return studentApiClient.deleteEmployee(stdId);
  }
}
