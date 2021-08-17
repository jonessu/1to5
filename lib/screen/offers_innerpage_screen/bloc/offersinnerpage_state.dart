part of 'offersinnerpage_bloc.dart';

abstract class OffersinnerpageState extends Equatable {
  const OffersinnerpageState();

  @override
  List<Object> get props => [];
}

class OffersinnerpageInitial extends OffersinnerpageState {}

class OffersInnerPageSuccess extends OffersinnerpageState {}

class OffersInnerPageFaliure extends OffersinnerpageState {}
