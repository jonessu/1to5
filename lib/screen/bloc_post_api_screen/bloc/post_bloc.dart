import 'dart:async';

import 'package:digitatravelmoney/data/models/post_model.dart';
import 'package:digitatravelmoney/data/repositories/post_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostRepository repo;
  PostBloc(PostState initialState, this.repo) : super(initialState);

  @override
  Stream<PostState> mapEventToState(PostEvent event) async* {
    if (event is DoFetchEvent) {
      yield LoadingState();
      try {
        var posts = await repo.fetchPosts();
        yield FetchSuccess(posts: posts);
      } catch (e) {
        yield ErrorState(message: e.toString());
      }
    }
  }
}
