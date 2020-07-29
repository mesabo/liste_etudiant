import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:liste_etudiant/model/models.dart';

abstract class StudentState extends Equatable {
  const StudentState();

  @override
  List<Object> get props => [];
}

///[LOADING_STATES]

class StudentInitial extends StudentState {}

class StudentLoadingProgress extends StudentState {}

class StudentLoadSuccess extends StudentState {
  final Student student;

  const StudentLoadSuccess({@required this.student}) : assert(student != null);

  List<Object> get props => [student];
}

class StudentLoadFailure extends StudentState {}


///[CREATING_STATES]
class StudentCreatingProgress extends StudentState {}

class StudentCreateSuccess extends StudentState {
  final Student student;

  const StudentCreateSuccess({@required this.student})
      : assert(student != null);

  List<Object> get props => [student];
}

class StudentCreateFailure extends StudentState {}
