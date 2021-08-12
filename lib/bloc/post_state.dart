part of 'post_bloc.dart';

abstract class PostState extends Equatable {
  const PostState();

  @override
  List<Object> get props => [];
}

class InitialState extends PostState {}

class LoadingState extends PostState {}

class FetchSuccess extends PostState {
  late List<PostModel> posts;
  FetchSuccess({required this.posts});
}

class ErrorState extends PostState {
  late String message;
  ErrorState({required this.message});
}
