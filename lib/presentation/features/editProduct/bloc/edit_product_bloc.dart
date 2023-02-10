import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_product_event.dart';
part 'edit_product_state.dart';
part 'edit_product_bloc.freezed.dart';

enum FormFieldType { name, price, discountPrice, description }

class EditProductBloc extends Bloc<EditProductEvent, EditProductState> {
  ProductNameInput nameInput = ProductNameInput('');
  ProductPriceInput priceInput = ProductPriceInput('');
  ProductDescriptionInput descriptionInput = ProductDescriptionInput('');
  ProductDiscountPriceInput discountInput = ProductDiscountPriceInput('');

  EditProductBloc() : super(_Initial()) {
    on<EditProductEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<_InputSubmitted>(_onInputChanged);
  }

  void _onInputChanged(_InputSubmitted event, Emitter<EditProductState> emit) {
    emit(const EditProductState.validate());
  }

  ProductEditInputField inputField(FormFieldType type) {
    switch (type) {
      case FormFieldType.name:
        return nameInput;
      case FormFieldType.price:
        return priceInput;
      case FormFieldType.discountPrice:
        return discountInput;
      case FormFieldType.description:
        return descriptionInput;
    }
  }
}

class EditFormInputs {}

abstract class ProductEditInputField {
  String fieldLabel;
  String intialValue;

  String? validator(String? value) {
    // TODO: implement validator
    throw UnimplementedError();
  }

  void onSaved(String? value) {
    // TODO: implement validator
    throw UnimplementedError();
  }

  ProductEditInputField(this.fieldLabel, this.intialValue);
}

class ProductNameInput extends ProductEditInputField {
  String inputName = '';

  ProductNameInput(String intialValue) : super('Name', intialValue);

  @override
  String? validator(String? value) {
    if (value?.isEmpty ?? true) {
      return 'Please enter a name';
    }
    return null;
  }
}

class ProductPriceInput extends ProductEditInputField {
  String inputName = '';

  ProductPriceInput(String intialValue) : super('Price', intialValue);

  @override
  String? validator(String? value) {
    double? number = double.tryParse(value ?? '');
    if (value?.isEmpty ?? true) {
      return 'Please enter a price';
    } else if (number == null) {
      return 'Please enter a valid number';
    } else if (number <= 0) {
      return 'Please enter a number greater than zero';
    }

    return null;
  }
}

class ProductDiscountPriceInput extends ProductEditInputField {
  String inputName = '';

  ProductDiscountPriceInput(String intialValue)
      : super('DiscountPrice', intialValue);

  @override
  String? validator(String? value) {
    double? number = double.tryParse(value ?? '');

    if (value?.isEmpty ?? true) {
      return null;
    } else if (number == null) {
      return 'Please enter a valid number';
    } else if (number < 0) {
      return 'Please enter a number greater than zero';
    }

    return null;
  }
}

class ProductDescriptionInput extends ProductEditInputField {
  String inputName = '';

  ProductDescriptionInput(String intialValue)
      : super('Description', intialValue);
  @override
  String? validator(String? value) {
    if (value?.isEmpty ?? true) {
      return 'Please enter a description';
    } else if ((value?.length ?? 0) < 10) {
      return 'Should be at least 10 characters long';
    }

    return null;
  }
}
