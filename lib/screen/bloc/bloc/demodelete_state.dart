part of 'demodelete_bloc.dart';

abstract class DemodeleteState extends Equatable {
  final List<int> cartItem;
  const DemodeleteState({required this.cartItem});

  @override
  List<Object> get props => [];
}

class ProductAdded extends DemodeleteState {
  final List<int> cartItem;
  const ProductAdded({required this.cartItem}) : super(cartItem: cartItem);

  @override
  List<Object> get props => [cartItem];
  @override
  String toString() => 'ProductAdded { todos: $cartItem }';
}
