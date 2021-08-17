part of 'atmlocation_bloc.dart';

abstract class AtmlocationState extends Equatable {
  const AtmlocationState();

  @override
  List<Object> get props => [];
}

class AtmlocationInitial extends AtmlocationState {}

class AtmlocationLoading extends AtmlocationState {}

class AtmlocationLoaded extends AtmlocationState {}

class GetCurrentLocationSuccess extends AtmlocationState {}

class GetCurrentLocationFaliure extends AtmlocationState {}
