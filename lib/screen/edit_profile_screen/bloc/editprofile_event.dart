part of 'editprofile_bloc.dart';

abstract class EditprofileEvent extends Equatable {
  const EditprofileEvent();

  @override
  List<Object> get props => [];
}

class EditprofileInitialEvent extends EditprofileEvent {}

class EditprofileClickEvent extends EditprofileEvent {
  final String name, address1, address2, city, state, pincode, security;
  EditprofileClickEvent(
      {required this.name,
      required this.address1,
      required this.address2,
      required this.city,
      required this.state,
      required this.pincode,
      required this.security});
}
