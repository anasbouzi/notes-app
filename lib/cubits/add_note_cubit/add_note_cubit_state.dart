part of 'add_note_cubit_cubit.dart';

@immutable
abstract class AddNoteCubitState {}

class AddNoteCubitInitial extends AddNoteCubitState {}

class AddNoteLoading extends AddNoteCubitState {}

class AddNoteSuccess extends AddNoteCubitState {}

class AddNoteFailure extends AddNoteCubitState {
  final String errorMessage;

  AddNoteFailure({required this.errorMessage});
}
