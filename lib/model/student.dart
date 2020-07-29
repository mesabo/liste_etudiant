import 'package:equatable/equatable.dart';

class Student extends Equatable {
  final String studentID;
  final String studentName;
  final String studentPhoneNumber;
  final String studentSubject;

  Student(
      {this.studentID,
      this.studentName,
      this.studentPhoneNumber,
      this.studentSubject});

  @override
  List<Object> get props => [
        studentID,
        studentName,
        studentPhoneNumber,
        studentSubject,
      ];

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
        studentID: json['id'] as String,
        studentName: json['student_name'] as String,
        studentPhoneNumber: json['student_phone_number'] as String,
        studentSubject: json['student_class'] as String);
  }
}
