import 'package:liste_etudiant/bloc/blocs.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:liste_etudiant/model/models.dart';
import 'package:liste_etudiant/repository/repositories.dart';

class StudentBloc extends Bloc<StudentEvent,StudentState>{
  StudentBloc(StudentState initialState) : super(initialState);

  @override
  Stream<StudentState> mapEventToState(StudentEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
