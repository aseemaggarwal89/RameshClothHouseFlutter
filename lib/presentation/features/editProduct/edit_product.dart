// ignore_for_file: unused_import

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/features/editProduct/bloc/edit_product_bloc.dart';
import 'package:rameshclothhouse/presentation/components/product_attribute_drop_down.dart';
import 'package:enum_to_string/enum_to_string.dart';

import '../../../domain_layer/domain_layer.dart';
import '../../../domain_layer/utils/network_exceptions.dart';
import '../../components/elevated_button.dart';
import '../../components/expandable_widget.dart';
import '../../components/product_detail_display.dart';
import '../../config/ui_helper.dart';
import 'add_product_description.dart';
import 'html_editor.dart';

@RoutePage()
// ignore: must_be_immutable
class EditProductScreen extends StatelessWidget {
  AddProductViewModel viewModel;
  EditProductScreen({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider<EditProductBloc>(
          create: ((context) => EditProductBloc(viewModel)),
        ),
      ],
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Text('Add Product'),
          ),
          body: const EditProductPage()),
    );
  }
}

class EditProductPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const EditProductPage());
  }

  const EditProductPage({Key? key}) : super(key: key);

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
                const Expanded(
                  child: EditProductForm(),
                ),
                const SizedBox(height: 50),
                AppElevatedButton(
                  label: 'Submit',
                  onPressed: () {
                    EditProductBloc bloc = context.read<EditProductBloc>();
                    bloc.add(const EditProductEvent.submittedTapped());
                  },
                ),
              ],
            ),
          ),
        ),
        BlocConsumer<EditProductBloc, EditProductState>(
            listener: (context, state) {},
            buildWhen: (previous, current) {
              return current != previous;
            },
            builder: (context, state) {
              if (state is EditProductLoading) {
                return buildLoading();
              }

              return Container();
            })
      ],
    );
  }
}

class EditProductForm extends StatefulWidget {
  const EditProductForm({Key? key}) : super(key: key);
  @override
  State<EditProductForm> createState() => _EditProductFormState();
}

class _EditProductFormState extends State<EditProductForm> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProductBloc, EditProductState>(
        builder: ((context, state) {
      EditProductBloc bloc = context.read<EditProductBloc>();
      DropDownInputField<BrandDTO>? brandDropDown =
          bloc.dropdownInputField<BrandDTO>(FormDropDownType.brand);
      DropDownInputField<CategoriesDTO>? categoryDropDown =
          bloc.dropdownInputField<CategoriesDTO>(FormDropDownType.categories);
      DropDownInputField<CategoriesDTO>? subCategoryDropDown =
          bloc.dropdownInputField<CategoriesDTO>(FormDropDownType.subCategory);
      DropDownInputField<QualityType>? qualityTypeDropDown =
          bloc.dropdownInputField<QualityType>(FormDropDownType.qualityType);
      DropDownInputField<QuantityType>? quantityTypeDropDown =
          bloc.dropdownInputField<QuantityType>(FormDropDownType.quantityType);
      DropDownInputField<QuantityUnitType>? quantityUnitTypeDropDown =
          bloc.dropdownInputField<QuantityUnitType>(
              FormDropDownType.quantityUnitType);

      return Container(
        padding: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: bloc.formGlobalKey,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: bloc
                        .inputField(FormFieldType.name)
                        .textEditingController,
                    decoration: InputDecoration(
                        labelText:
                            bloc.inputField(FormFieldType.name).fieldLabel),
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) {
                      // _validateForm();
                      // FocusScope.of(context).requestFocus(_priceFocusNode);
                    },
                    onSaved: (value) {},
                    validator: (value) =>
                        bloc.inputField(FormFieldType.name).validator(value),
                  ),
                  verticalSpaceRegular,
                  TextFormField(
                    controller: bloc
                        .inputField(FormFieldType.price)
                        .textEditingController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                        labelText:
                            bloc.inputField(FormFieldType.price).fieldLabel),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    // focusNode: _priceFocusNode,
                    onFieldSubmitted: (_) {
                      // _validateForm();
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
                    controller: bloc
                        .inputField(FormFieldType.discountPrice)
                        .textEditingController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                        labelText: bloc
                            .inputField(FormFieldType.discountPrice)
                            .fieldLabel),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    // focusNode: _priceFocusNode,
                    onFieldSubmitted: (_) {
                      // _validateForm();
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
                    controller: bloc
                        .inputField(FormFieldType.description)
                        .textEditingController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
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
                      // _validateForm();
                      // FocusScope.of(context)
                      //     .requestFocus(_descriptionFocusNode);
                    },
                  ),
                  AppElevatedButton(
                    width: 200,
                    label: 'Product Summary HTML',
                    onPressed: () async {
                      Map results = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AppHtmlEditor(title: '')),
                      );

                      final html = results['html'];
                      if (html != null && html is String) {
                        bloc.add(EditProductEvent.updateSummary(html));
                      }
                    },
                  ),
                  verticalSpaceRegular,
                  if (brandDropDown != null)
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
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            hintText: 'Select brand',
                            // isDense: true,
                            attributes: brandDropDown.items,
                            onChanged: (value) {
                              brandDropDown.onChanged(value);
                            },
                            textValue: (BrandDTO value) {
                              return value.name;
                            },
                            selectedItem: () => brandDropDown.selectedItem,
                            validator: (value) {
                              if (brandDropDown.selectedItem == null) {
                                return 'Please select brand';
                              }
                              return null;
                            },
                            isEmpty: () => brandDropDown.isEmpty(),
                          ),
                        ),
                      ],
                    ),
                  verticalSpaceRegular,
                  if (categoryDropDown != null)
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
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            hintText: 'Select category',
                            isDense: true,
                            attributes: categoryDropDown.items,
                            onChanged: (value) {
                              setState(() {
                                subCategoryDropDown
                                    ?.updateItems(value?.subCategories ?? []);
                              });
                              categoryDropDown.onChanged(value);
                            },
                            textValue: (CategoriesDTO value) {
                              return value.name;
                            },
                            selectedItem: () => categoryDropDown.selectedItem,
                            isEmpty: () => categoryDropDown.isEmpty(),
                            validator: (value) {
                              if (categoryDropDown.selectedItem == null) {
                                return 'Please select category';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  verticalSpaceRegular,
                  if (subCategoryDropDown != null)
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
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              hintText: 'Select sub category',
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
                              validator: (value) {
                                if (categoryDropDown?.selectedItem != null &&
                                    subCategoryDropDown.selectedItem == null) {
                                  return 'Please select sub category';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                  verticalSpaceRegular,
                  if (qualityTypeDropDown != null)
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
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
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
                            selectedItem: () =>
                                qualityTypeDropDown.selectedItem,
                            isEmpty: () => qualityTypeDropDown.isEmpty(),
                            validator: (value) {
                              if (qualityTypeDropDown.selectedItem == null) {
                                return 'Please select quality';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  verticalSpaceRegular,
                  if (quantityTypeDropDown != null)
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
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
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
                            selectedItem: () =>
                                quantityTypeDropDown.selectedItem,
                            isEmpty: () => quantityTypeDropDown.isEmpty(),
                            validator: (value) {
                              if (quantityTypeDropDown.selectedItem == null) {
                                return 'Please select quantity';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  verticalSpaceRegular,
                  if (quantityUnitTypeDropDown != null)
                    Row(
                      children: [
                        const Expanded(
                          flex: 1,
                          child: LatoTextView(
                            label: 'Quantity Unit Type',
                            fontType: AppTextType.DisplayMedium,
                          ),
                        ),
                        Expanded(
                          flex: 9,
                          child: ProductAttributeDropDown<QuantityUnitType>(
                            hintText: 'Please select quantity',
                            isDense: true,
                            attributes: quantityUnitTypeDropDown.items,
                            onChanged: (value) {
                              quantityUnitTypeDropDown.onChanged(value);
                            },
                            textValue: (QuantityUnitType value) {
                              return EnumToString.convertToString(
                                value,
                                camelCase: true,
                              );
                            },
                            selectedItem: () =>
                                quantityUnitTypeDropDown.selectedItem,
                            isEmpty: () => quantityUnitTypeDropDown.isEmpty(),
                          ),
                        ),
                      ],
                    ),
                  verticalSpaceRegular,
                  ExpandableWidget(
                    cardLabel: "Product Details",
                    builder: (context) {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final description = bloc.productDetails[index];
                          return ProductDetailDisplay(
                            description: description,
                          );
                        },
                        itemCount: bloc.productDetails.length,
                      );
                    },
                  ),
                  verticalSpaceRegular,
                  Row(
                    children: [
                      AppElevatedButton(
                        width: 200,
                        label: 'Add Product Details',
                        onPressed: () async {
                          Map results = await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    AddProductDescriptionDetailWidget(
                                        savedProductDetails:
                                            bloc.productDetails)),
                          );

                          final productDetails = results['items'];
                          if (productDetails != null &&
                              productDetails
                                  is List<ProductDescriptionDetail>) {
                            bloc.add(EditProductEvent.updateProductDetails(
                                productDetails));
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }));
  }
}
