import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rameshclothhouse/presentation/features/dashboard/bloc/dashboard_bloc.dart';

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
  quantityType,
  quantityUnitType,
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

class EditProductInputFields {
  // static final EditProductInputFields _instance =
  //     EditProductInputFields._internal();
  // factory EditProductInputFields() => _instance;
  // EditProductInputFields._internal();

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
      DropDownInputField<QualityType>(QualityType.values,
          selectedItem: QualityType.standard);
  DropDownInputField<QuantityType> quantityTypeDropDown =
      DropDownInputField<QuantityType>(QuantityType.values,
          selectedItem: QuantityType.unstiched);
  DropDownInputField<QuantityUnitType> quantityUnitTypeDropDown =
      DropDownInputField<QuantityUnitType>(QuantityUnitType.values,
          selectedItem: QuantityUnitType.meter);

  EditProductInputFields(AddProductViewModel viewModel) {
    brandDropDown.updateItems(viewModel.brands);
    categoriesDropDown.updateItems(viewModel.categories);
  }

  DropDownInputField<T>? dropdownInputField<T>(FormDropDownType type) {
    switch (type) {
      case FormDropDownType.brand:
        if (brandDropDown is DropDownInputField<T>) {
          return brandDropDown as DropDownInputField<T>;
        }
        break;
      case FormDropDownType.categories:
        if (categoriesDropDown is DropDownInputField<T>) {
          return categoriesDropDown as DropDownInputField<T>;
        }
        break;

      case FormDropDownType.subCategory:
        if (subCategoriesDropDown is DropDownInputField<T>) {
          return subCategoriesDropDown as DropDownInputField<T>;
        }
        break;
      case FormDropDownType.qualityType:
        if (qualityTypeDropDown is DropDownInputField<T>) {
          return qualityTypeDropDown as DropDownInputField<T>;
        }
        break;

      case FormDropDownType.quantityType:
        if (quantityTypeDropDown is DropDownInputField<T>) {
          return quantityTypeDropDown as DropDownInputField<T>;
        }
        break;

      case FormDropDownType.quantityUnitType:
        if (quantityUnitTypeDropDown is DropDownInputField<T>) {
          return quantityUnitTypeDropDown as DropDownInputField<T>;
        }
        break;
    }

    return null;
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

class EditProductBloc extends Bloc<EditProductEvent, EditProductState> {
  final formGlobalKey = GlobalKey<FormState>();
  late final EditProductInputFields productInputFields;
  List<ProductDescriptionDetail> productDetails = [];

  AddProductViewModel viewModel;
  EditProductBloc(this.viewModel)
      : super(_Initial(EditProductInputFields(viewModel))) {
    if (state is _Initial) {
      productInputFields = (state as _Initial).productInputFields;
    }

    on<_InputSubmitted>(_onInputChanged);
    on<_ProductDetailsUpdated>(_updateProductDetail);
    on<_SummaryUpdated>(_onSummaryUpdated);
  }

  void _onSummaryUpdated(
      _SummaryUpdated event, Emitter<EditProductState> emit) {
    inputField(FormFieldType.description).onSaved(event.description);
    emit(const EditProductState.refresh());
  }

  void _onInputChanged(_InputSubmitted event, Emitter<EditProductState> emit) {
    final isValid = formGlobalKey.currentState?.validate();
    if (!(isValid ?? false)) {
      emit(const EditProductState.validate(false));

      return;
    }
    emit(const EditProductState.validate(true));
  }

  void _updateProductDetail(
      _ProductDetailsUpdated event, Emitter<EditProductState> emit) {
    productDetails = event.productDetails;
    emit(const EditProductState.refresh());
  }

  DropDownInputField<T>? dropdownInputField<T>(FormDropDownType type) {
    return productInputFields.dropdownInputField(type);
  }

  ProductEditInputField inputField(FormFieldType type) {
    return productInputFields.inputField(type);
  }
}

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

  ProductDescriptionInput(String intialValue) : super('Summary', intialValue);
  @override
  String? validator(String? value) {
    if (value?.isEmpty ?? true) {
      return 'Please enter a Summary';
    } else if ((value?.length ?? 0) < 10) {
      return 'Should be at least 10 characters long';
    }

    return null;
  }
}
