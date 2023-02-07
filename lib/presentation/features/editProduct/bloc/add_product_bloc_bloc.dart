import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_product_bloc_event.dart';
part 'add_product_bloc_state.dart';
part 'add_product_bloc_bloc.freezed.dart';

class AddProductBlocBloc
    extends Bloc<AddProductBlocEvent, AddProductBlocState> {
  AddProductBlocBloc() : super(const _Initial()) {
    on<AddProductBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
