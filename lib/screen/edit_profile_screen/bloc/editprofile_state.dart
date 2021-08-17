part of 'editprofile_bloc.dart';

abstract class EditprofileState extends Equatable {
  const EditprofileState();

  @override
  List<Object> get props => [];
}

class EditprofileInitial extends EditprofileState {}

class EditprofileLoadedState extends EditprofileState {}

class EditprofileLoadingState extends EditprofileState {}

class EditprofileFailureState extends EditprofileState {}

class EditprofileNavigatePopState extends EditprofileState {}

class EditprofileNavigateFailPopState extends EditprofileState {}
