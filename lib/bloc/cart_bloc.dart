import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_cart_bloc/item.dart';

enum CartEventType {
  add, remove
}

class CartEvent {
  final CartEventType type;
  final Item item;

  CartEvent(this.type, this.item);
}

class CartBloc extends Bloc<CartEvent, List<Item>> {
  @override
  List<Item> get initialState => [];

  @override
  Stream<List<Item>> mapEventToState(CartEvent event) async* {
    switch(event.type) {
      case CartEventType.add:
        currentState.add(event.item);
        break;
      case CartEventType.remove:
        currentState.remove(event.item);
        break;
    }
    yield currentState;
  }
}