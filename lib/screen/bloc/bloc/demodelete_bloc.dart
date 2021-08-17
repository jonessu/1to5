import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'demodelete_event.dart';
part 'demodelete_state.dart';

class DemodeleteBloc extends Bloc<DemodeleteEvent, DemodeleteState> {
  DemodeleteBloc() : super(ProductAdded(cartItem: []));

  final List<int> _cartItems = [];
  List<int> get items => _cartItems;

  @override
  Stream<DemodeleteState> mapEventToState(DemodeleteEvent event) async* {
    if (event is AddProduct) {
      _cartItems.add(event.productIndex);
      yield ProductAdded(cartItem: _cartItems);
    }
  }
}
