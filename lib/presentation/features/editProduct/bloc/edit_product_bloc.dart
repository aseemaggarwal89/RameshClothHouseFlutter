import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain_layer/models/entities.dart';

part 'edit_product_event.dart';
part 'edit_product_state.dart';
part 'edit_product_bloc.freezed.dart';

enum FormFieldType { name, price, discountPrice, description }

enum FormDropDownType {
  brand,
  categories,
  subCategory,
  qualityType,
  quantityType
}

class AddProductViewModel {
  final List<CategoriesDTO> categories;
  final List<BrandDTO> brands;
  final List<ColorInfo> colorInfo;
  AddProductViewModel(
    this.categories,
    this.brands,
    this.colorInfo,
  );
}

class EditProductBloc extends Bloc<EditProductEvent, EditProductState> {
  ProductNameInput nameInput = ProductNameInput('');
  ProductPriceInput priceInput = ProductPriceInput('');
  ProductDescriptionInput descriptionInput = ProductDescriptionInput('');
  ProductDiscountPriceInput discountInput = ProductDiscountPriceInput('');
  DropDownInputField<BrandDTO> brandDropDown = DropDownInputField<BrandDTO>([]);
  DropDownInputField<CategoriesDTO> categoriesDropDown =
      DropDownInputField<CategoriesDTO>([]);
  DropDownInputField<CategoriesDTO> subCategoriesDropDown =
      DropDownInputField<CategoriesDTO>([]);
  DropDownInputField<QualityType> qualityTypeDropDown =
      DropDownInputField<QualityType>(QualityType.values, selectedItem: QualityType.standard);
  DropDownInputField<QuantityType> quantityTypeDropDown =
      DropDownInputField<QuantityType>(QuantityType.values, selectedItem: QuantityType.unstiched);

  AddProductViewModel viewModel;

  EditProductBloc(this.viewModel) : super(_Initial()) {
    brandDropDown.updateItems(viewModel.brands);
    categoriesDropDown.updateItems(viewModel.categories);
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

  DropDownInputField dropdownInputField(FormDropDownType type) {
    switch (type) {
      case FormDropDownType.brand:
        return brandDropDown;
      case FormDropDownType.categories:
        return categoriesDropDown;
      case FormDropDownType.subCategory:
        return subCategoriesDropDown;
      case FormDropDownType.qualityType:
        return qualityTypeDropDown;
      case FormDropDownType.quantityType:
        return quantityTypeDropDown;
    }
  }
}

class EditFormInputs {}

class DropDownInputField<T> {
  List<T> items;
  T? selectedItem;
  late void Function(T?) onChanged;

  bool isEmpty() {
    return selectedItem == null;
  }

  void updateItems(List<T> items) {
    this.items = items;
  }

  DropDownInputField(this.items, {this.selectedItem}) {
    onChanged = (value) {
      selectedItem = value;
    };
  }
}

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

class BrandDropDownInput<BrandDTO> extends DropDownInputField {
  BrandDropDownInput({required List<BrandDTO> items}) : super(items);
}
