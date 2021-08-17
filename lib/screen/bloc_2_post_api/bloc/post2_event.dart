part of 'post2_bloc.dart';

abstract class Post2Event extends Equatable {
  const Post2Event();

  @override
  List<Object> get props => [];
}

class DoFetchEvent extends Post2Event {}
