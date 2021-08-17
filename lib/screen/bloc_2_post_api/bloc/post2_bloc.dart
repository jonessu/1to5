import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:digitatravelmoney/data/models/post2.dart';
import 'package:digitatravelmoney/data/repositories/post2.dart';
import 'package:equatable/equatable.dart';

part 'post2_event.dart';

class Post2Bloc extends Bloc<Post2Event, Post2State> {
  Post2Repository repo;
  Post2Bloc(Post2State initialState, this.repo) : super(initialState);

  @override
  Stream<Post2State> mapEventToState(
    Post2Event event,
  ) async* {
    // TODO: implement mapEventToState
  }
}

class Post2State {}
