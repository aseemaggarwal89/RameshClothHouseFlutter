// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/features/editProduct/bloc/edit_product_bloc.dart';
import 'package:rameshclothhouse/presentation/components/product_attribute_drop_down.dart';
import 'package:enum_to_string/enum_to_string.dart';

import '../../../domain_layer/domain_layer.dart';
import '../../../domain_layer/utils/network_exceptions.dart';
import '../../config/ui_helper.dart';

class EditProductScreen extends StatelessWidget {
  AddProductViewModel viewModel;
  EditProductScreen({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<EditProductBloc>(
          create: ((context) => EditProductBloc(viewModel)),
        ),
      ],
      child: EditProductPage(),
    );
  }
}

class EditProductPage extends StatelessWidget {
  final formGlobalKey = GlobalKey<FormState>();

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => EditProductPage());
  }

  EditProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
        ),
        SingleChildScrollView(
          child: SizedBox(
            height: deviceSize.height,
            width: deviceSize.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  flex: deviceSize.width > 600 ? 2 : 1,
                  child: EditProductForm(
                    form: formGlobalKey,
                  ),
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                    onPressed: () {
                      if (formGlobalKey.currentState?.validate() ?? false) {
                        formGlobalKey.currentState?.save();
                        // use the email provided here
                      }
                    },
                    child: Text("Submit"))
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class EditProductForm extends StatefulWidget {
  late final GlobalKey<FormState> _form;

  EditProductForm({Key? key, required GlobalKey<FormState> form})
      : super(key: key) {
    _form = form;
  }

  @override
  State<EditProductForm> createState() => _EditProductFormState();
}

class _EditProductFormState extends State<EditProductForm> {
  final passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProductBloc, EditProductState>(
        builder: ((context, state) {
      EditProductBloc bloc = context.read<EditProductBloc>();
      DropDownInputField<BrandDTO> brandDropDown =
          bloc.dropdownInputField(FormDropDownType.brand)
              as DropDownInputField<BrandDTO>;
      DropDownInputField<CategoriesDTO> categoryDropDown =
          bloc.dropdownInputField(FormDropDownType.categories)
              as DropDownInputField<CategoriesDTO>;
      DropDownInputField<CategoriesDTO> subCategoryDropDown =
          bloc.dropdownInputField(FormDropDownType.subCategory)
              as DropDownInputField<CategoriesDTO>;
      DropDownInputField<QualityType> qualityTypeDropDown =
          bloc.dropdownInputField(FormDropDownType.qualityType)
              as DropDownInputField<QualityType>;
      DropDownInputField<QuantityType> quantityTypeDropDown =
          bloc.dropdownInputField(FormDropDownType.quantityType)
              as DropDownInputField<QuantityType>;

      return Container(
        padding: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: widget._form,
            child: Center(
              child: ListView(
                children: <Widget>[
                  TextFormField(
                    initialValue:
                        bloc.inputField(FormFieldType.name).intialValue,
                    decoration: InputDecoration(
                        labelText:
                            bloc.inputField(FormFieldType.name).fieldLabel),
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) {
                      _validateForm();
                      // FocusScope.of(context).requestFocus(_priceFocusNode);
                    },
                    onSaved: (value) {},
                    validator: (value) =>
                        bloc.inputField(FormFieldType.name).validator(value),
                  ),
                  verticalSpaceRegular,
                  TextFormField(
                    initialValue:
                        bloc.inputField(FormFieldType.price).intialValue,
                    decoration: InputDecoration(
                        labelText:
                            bloc.inputField(FormFieldType.price).fieldLabel),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    // focusNode: _priceFocusNode,
                    onFieldSubmitted: (_) {
                      _validateForm();
                      // FocusScope.of(context)
                      //     .requestFocus(_descriptionFocusNode);
                    },
                    onSaved: (value) =>
                        bloc.inputField(FormFieldType.price).onSaved(value),
                    validator: (value) =>
                        bloc.inputField(FormFieldType.price).validator(value),
                  ),
                  verticalSpaceRegular,
                  TextFormField(
                    initialValue: bloc
                        .inputField(FormFieldType.discountPrice)
                        .intialValue,
                    decoration: InputDecoration(
                        labelText: bloc
                            .inputField(FormFieldType.discountPrice)
                            .fieldLabel),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    // focusNode: _priceFocusNode,
                    onFieldSubmitted: (_) {
                      _validateForm();
                      // FocusScope.of(context)
                      //     .requestFocus(_descriptionFocusNode);
                    },
                    onSaved: (value) => bloc
                        .inputField(FormFieldType.discountPrice)
                        .onSaved(value),
                    validator: (value) => bloc
                        .inputField(FormFieldType.discountPrice)
                        .validator(value),
                  ),
                  verticalSpaceRegular,
                  TextFormField(
                    initialValue:
                        bloc.inputField(FormFieldType.description).intialValue,
                    decoration: InputDecoration(
                        labelText: bloc
                            .inputField(FormFieldType.description)
                            .fieldLabel),
                    maxLines: 3,
                    keyboardType: TextInputType.multiline,
                    // focusNode: _descriptionFocusNode,
                    onSaved: (value) => bloc
                        .inputField(FormFieldType.description)
                        .onSaved(value),
                    validator: (value) => bloc
                        .inputField(FormFieldType.description)
                        .validator(value),
                    onFieldSubmitted: (_) {
                      _validateForm();
                      // FocusScope.of(context)
                      //     .requestFocus(_descriptionFocusNode);
                    },
                  ),
                  verticalSpaceRegular,
                  Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: LatoTextView(
                          label: 'Brand Type',
                          fontType: AppTextType.DisplayMedium,
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: ProductAttributeDropDown<BrandDTO>(
                          hintText: 'Please select brand',
                          isDense: true,
                          attributes: brandDropDown.items,
                          onChanged: (value) {
                            brandDropDown.onChanged(value);
                          },
                          textValue: (BrandDTO value) {
                            return value.name;
                          },
                          selectedItem: () => brandDropDown.selectedItem,
                          isEmpty: () => brandDropDown.isEmpty(),
                        ),
                      ),
                    ],
                  ),
                  verticalSpaceRegular,
                  Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: LatoTextView(
                          label: 'Category Type',
                          fontType: AppTextType.DisplayMedium,
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: ProductAttributeDropDown<CategoriesDTO>(
                          hintText: 'Please select category',
                          isDense: true,
                          attributes: categoryDropDown.items,
                          onChanged: (value) {
                            setState(() {
                              subCategoryDropDown
                                  .updateItems(value?.subCategories ?? []);
                            });
                            categoryDropDown.onChanged(value);
                          },
                          textValue: (CategoriesDTO value) {
                            return value.name;
                          },
                          selectedItem: () => categoryDropDown.selectedItem,
                          isEmpty: () => categoryDropDown.isEmpty(),
                        ),
                      ),
                    ],
                  ),
                  verticalSpaceRegular,
                  if (subCategoryDropDown.items.isNotEmpty)
                    Row(
                      children: [
                        const Expanded(
                          flex: 1,
                          child: LatoTextView(
                            label: 'Sub Category Type',
                            fontType: AppTextType.DisplayMedium,
                          ),
                        ),
                        Expanded(
                          flex: 9,
                          child: ProductAttributeDropDown<CategoriesDTO>(
                            hintText: 'Please select sub category',
                            isDense: true,
                            attributes: subCategoryDropDown.items,
                            onChanged: (value) {
                              subCategoryDropDown.onChanged(value);
                            },
                            textValue: (CategoriesDTO value) {
                              return value.name;
                            },
                            selectedItem: () =>
                                subCategoryDropDown.selectedItem,
                            isEmpty: () => subCategoryDropDown.isEmpty(),
                          ),
                        ),
                      ],
                    ),
                  verticalSpaceRegular,
                  Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: LatoTextView(
                          label: 'Quality Type',
                          fontType: AppTextType.DisplayMedium,
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: ProductAttributeDropDown<QualityType>(
                          hintText: 'Please select quality',
                          isDense: true,
                          attributes: qualityTypeDropDown.items,
                          onChanged: (value) {
                            qualityTypeDropDown.onChanged(value);
                          },
                          textValue: (QualityType value) {
                            return EnumToString.convertToString(
                              value,
                              camelCase: true,
                            );
                          },
                          selectedItem: () => qualityTypeDropDown.selectedItem,
                          isEmpty: () => qualityTypeDropDown.isEmpty(),
                        ),
                      ),
                    ],
                  ),
                  verticalSpaceRegular,
                  Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: LatoTextView(
                          label: 'Quantity Type',
                          fontType: AppTextType.DisplayMedium,
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: ProductAttributeDropDown<QuantityType>(
                          hintText: 'Please select quantity',
                          isDense: true,
                          attributes: quantityTypeDropDown.items,
                          onChanged: (value) {
                            quantityTypeDropDown.onChanged(value);
                          },
                          textValue: (QuantityType value) {
                            return EnumToString.convertToString(
                              value,
                              camelCase: true,
                            );
                          },
                          selectedItem: () => quantityTypeDropDown.selectedItem,
                          isEmpty: () => quantityTypeDropDown.isEmpty(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );

      // return Card(
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(10.0),
      //   ),
      //   elevation: 8.0,
      //   child: Container(
      //     height: 500,
      //     constraints: const BoxConstraints(minHeight: 260),
      //     width: 450,
      //     padding: const EdgeInsets.all(16.0),
      //     child: Padding(
      //       padding: const EdgeInsets.all(16.0),
      //       child: Form(
      //         key: widget._form,
      //         child: ListView(
      //           children: <Widget>[
      //             TextFormField(
      //               initialValue:
      //                   bloc.inputField(FormFieldType.name).intialValue,
      //               decoration: InputDecoration(
      //                   labelText:
      //                       bloc.inputField(FormFieldType.name).fieldLabel),
      //               textInputAction: TextInputAction.next,
      //               onFieldSubmitted: (_) {
      //                 _validateForm();
      //                 // FocusScope.of(context).requestFocus(_priceFocusNode);
      //               },
      //               onSaved: (value) {},
      //               validator: (value) =>
      //                   bloc.inputField(FormFieldType.name).validator(value),
      //             ),
      //             TextFormField(
      //               initialValue:
      //                   bloc.inputField(FormFieldType.price).intialValue,
      //               decoration: InputDecoration(
      //                   labelText:
      //                       bloc.inputField(FormFieldType.price).fieldLabel),
      //               textInputAction: TextInputAction.next,
      //               keyboardType: TextInputType.number,
      //               // focusNode: _priceFocusNode,
      //               onFieldSubmitted: (_) {
      //                 _validateForm();
      //                 // FocusScope.of(context)
      //                 //     .requestFocus(_descriptionFocusNode);
      //               },
      //               onSaved: (value) =>
      //                   bloc.inputField(FormFieldType.price).onSaved(value),
      //               validator: (value) =>
      //                   bloc.inputField(FormFieldType.price).validator(value),
      //             ),
      //             TextFormField(
      //               initialValue: bloc
      //                   .inputField(FormFieldType.discountPrice)
      //                   .intialValue,
      //               decoration: InputDecoration(
      //                   labelText: bloc
      //                       .inputField(FormFieldType.discountPrice)
      //                       .fieldLabel),
      //               textInputAction: TextInputAction.next,
      //               keyboardType: TextInputType.number,
      //               // focusNode: _priceFocusNode,
      //               onFieldSubmitted: (_) {
      //                 _validateForm();
      //                 // FocusScope.of(context)
      //                 //     .requestFocus(_descriptionFocusNode);
      //               },
      //               onSaved: (value) => bloc
      //                   .inputField(FormFieldType.discountPrice)
      //                   .onSaved(value),
      //               validator: (value) => bloc
      //                   .inputField(FormFieldType.discountPrice)
      //                   .validator(value),
      //             ),
      //             TextFormField(
      //               initialValue:
      //                   bloc.inputField(FormFieldType.description).intialValue,
      //               decoration: InputDecoration(
      //                   labelText: bloc
      //                       .inputField(FormFieldType.description)
      //                       .fieldLabel),
      //               maxLines: 3,
      //               keyboardType: TextInputType.multiline,
      //               // focusNode: _descriptionFocusNode,
      //               onSaved: (value) => bloc
      //                   .inputField(FormFieldType.description)
      //                   .onSaved(value),
      //               validator: (value) => bloc
      //                   .inputField(FormFieldType.description)
      //                   .validator(value),
      //               onFieldSubmitted: (_) {
      //                 _validateForm();
      //                 // FocusScope.of(context)
      //                 //     .requestFocus(_descriptionFocusNode);
      //               },
      //             ),
      //             ProductAttributeDropDown<BrandDTO>(
      //               hintText: 'Please select brand',
      //               isDense: true,
      //               attributes: brandDropDown.items,
      //               onChanged: (value) {
      //                 brandDropDown.onChanged(value);
      //               },
      //               textValue: (BrandDTO value) {
      //                 return value.name;
      //               },
      //               selectedItem: () => brandDropDown.selectedItem,
      //               isEmpty: () => brandDropDown.isEmpty(),
      //             ),
      //             ProductAttributeDropDown<CategoriesDTO>(
      //               hintText: 'Please select category',
      //               isDense: true,
      //               attributes: categoryDropDown.items,
      //               onChanged: (value) {
      //                 setState(() {
      //                   subCategoryDropDown
      //                       .updateItems(value?.subCategories ?? []);
      //                 });
      //                 categoryDropDown.onChanged(value);
      //               },
      //               textValue: (CategoriesDTO value) {
      //                 return value.name;
      //               },
      //               selectedItem: () => categoryDropDown.selectedItem,
      //               isEmpty: () => categoryDropDown.isEmpty(),
      //             ),
      //             if (subCategoryDropDown.items.isNotEmpty)
      //               ProductAttributeDropDown<CategoriesDTO>(
      //                 hintText: 'Please select sub category',
      //                 isDense: true,
      //                 attributes: subCategoryDropDown.items,
      //                 onChanged: (value) {
      //                   subCategoryDropDown.onChanged(value);
      //                 },
      //                 textValue: (CategoriesDTO value) {
      //                   return value.name;
      //                 },
      //                 selectedItem: () => subCategoryDropDown.selectedItem,
      //                 isEmpty: () => subCategoryDropDown.isEmpty(),
      //               ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // );
    }));
  }

  void _validateForm() {
    final isValid = widget._form.currentState?.validate();
    if (!(isValid ?? false)) {
      return;
    }

    // _form.currentState?.save();
  }
}
