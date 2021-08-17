part of 'offersinnerpage_bloc.dart';

abstract class OffersinnerpageEvent extends Equatable {
  const OffersinnerpageEvent();

  @override
  List<Object> get props => [];
}

class InitialOffersPage extends OffersinnerpageEvent {
  final String _URL;
  InitialOffersPage(this._URL);
}
