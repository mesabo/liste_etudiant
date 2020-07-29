import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class StudentEvent extends Equatable {
  const StudentEvent();
}

class CreateTableStudentRequest extends StudentEvent {
  @override
  List<Object> get props => [];
}

class GetStudentRequest extends StudentEvent {
  @override
  List<Object> get props => [];
}

class AddStudentRequested extends StudentEvent {
  final String name;
  final String phone;
  final String subject;

  const AddStudentRequested(
      {@required this.name, @required this.phone, @required this.subject})
      : assert(name != null),
        assert(phone != null),
        assert(subject != null);

  @override
  List<Object> get props => [name, phone, subject];
}

class UpdateStudentRequested extends StudentEvent {
  final int id;
  final String name;
  final String phone;
  final String subject;

  const UpdateStudentRequested(
      {@required this.id,
      @required this.name,
      @required this.phone,
      @required this.subject})
      : assert(
          id != null,
        ),
        assert(name != null),
        assert(phone != null),
        assert(subject != null);

  @override
  List<Object> get props => [id, name, phone, subject];
}

class DeleteStudentRequested extends StudentEvent {
  final int id;

  const DeleteStudentRequested({
    @required this.id,
  }) : assert(
          id != null,
        );

  @override
  List<Object> get props => [id];
}
