part of 'demodelete_bloc.dart';

abstract class DemodeleteEvent extends Equatable {
  const DemodeleteEvent();

  @override
  List<Object> get props => [];
}

class AddProduct extends DemodeleteEvent {
  final int productIndex;
  const AddProduct(this.productIndex);

  @override
  List<Object> get props => [productIndex];

  @override
  String toString() => 'AddProduct { index: $productIndex }';
}
