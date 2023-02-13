import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rameshclothhouse/presentation/components/elevated_button.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import '../../../domain_layer/models/product_detail_dto.dart';
import '../../components/product_attribute_drop_down.dart';
import '../../components/product_detail_display.dart';
import '../../config/ui_helper.dart';

// ignore: must_be_immutable
class AddProductDescriptionDetailWidget extends StatelessWidget {
  AddProductDescriptionDetailWidget({this.savedProductDetails, super.key});
  List<ProductDescriptionDetail>? savedProductDetails;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: ((context) =>
                AddProductProvider(savedProductDetails ?? []))),
      ],
      child: const ScreenPage(),
    );
  }
}

class ScreenPage extends StatelessWidget {
  const ScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AddProductProvider>(builder: ((context, value, child) {
      return Column(
        children: [
          ListView.builder(
            itemCount: value.itemCount,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              if (value.isAddRow(index)) {
                return AddProductDetailRowWidget(
                  provider: value,
                );
              } else {
                final description = value.itemAtIndex(index);

                return description != null
                    ? Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: AppElevatedButton(
                                width: 100,
                                label: 'Remove',
                                onPressed: () {
                                  value.remove(description);
                                },
                              ),
                          ),
                          Expanded(
                            flex: 8,
                            child:
                                ProductDetailDisplay(description: description),
                          ),
                        ],
                      )
                    : Container();
              }
            },
          ),
          verticalSpaceRegular,
          AppElevatedButton(
                          width: 100,

              label: 'Save',
              onPressed: () {
                if (value.productDetails.isNotEmpty) {
                  Navigator.of(context).pop({'items': value.productDetails});
                  return;
                }

                Navigator.of(context).pop();
              },
            ),
        ],
      );
    }));
  }
}

class AddProductDetailRowWidget extends StatelessWidget {
  final AddProductProvider provider;

  int? order = 1;
  String? title;
  String? description;

  late final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final descriptionFocusNode = FocusNode();

  AddProductDetailRowWidget({required this.provider, super.key});

  void _validateForm(BuildContext context) {
    final isValid = _form.currentState?.validate();
    if (!(isValid ?? false)) {
      return;
    }

    _form.currentState?.save();
    if ((title?.isNotEmpty ?? false) &&
        (description?.isNotEmpty ?? false) &&
        (order != null)) {
      provider.addProductDetail(title!, description!, order!);
    }
  }

  void showAlert(BuildContext context, String errorMessage) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: LatoTextView(label: errorMessage)),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _form,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const LatoTextView(
              label: 'Order',
              fontType: AppTextType.DisplayMedium,
            ),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ProductAttributeDropDown<int>(
                    selectedItem: () => order,
                    attributes: [for (var i = 1; i <= 15; i++) i],
                    onChanged: (value) {
                      order = value;
                    },
                    textValue: (int value) {
                      return '$value';
                    },
                    isEmpty: () => false,
                    validator: (value) {
                      if (provider.productDetails
                          .where((element) => element.order == order)
                          .toList()
                          .isEmpty) {
                        return null;
                      } else {
                        return '$value is available, Please change order';
                      }
                    },
                  ),
                )),
            horizontalSpaceRegular,
            const LatoTextView(
              label: 'Title',
              fontType: AppTextType.DisplayMedium,
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      decoration: const InputDecoration(labelText: ''),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) {
                        // _validateForm();
                        FocusScope.of(context)
                            .requestFocus(descriptionFocusNode);
                      },
                      onSaved: (value) {
                        title = value;
                      },
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Please enter a title';
                        }
                        return null;
                      }),
                )),
            const LatoTextView(
              label: 'Detail',
              fontType: AppTextType.DisplayMedium,
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    focusNode: descriptionFocusNode,
                    maxLines: 3,
                    keyboardType: TextInputType.multiline,
                    decoration: const InputDecoration(labelText: ''),
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) {},
                    onSaved: (value) {
                      description = value;
                    },
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Please enter a description';
                      }
                      return null;
                    }),
              ),
            ),
            AppElevatedButton(
              width: 100,
              label: 'Add',
              onPressed: () {
                _validateForm(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class AddProductProvider extends ChangeNotifier {
  List<ProductDescriptionDetail> productDetails = [];

  AddProductProvider(List<ProductDescriptionDetail> savedProductDetails) {
    if (savedProductDetails.isNotEmpty) {
      productDetails = List.from(savedProductDetails);
    }
  }

  void addProductDetail(String title, String detail, num order) {
    ProductDescriptionDetail productDescription =
        ProductDescriptionDetail(title, detail, order);
    productDetails.add(productDescription);

    notifyListeners();
  }

  void remove(ProductDescriptionDetail productDescription) {
    productDetails.remove(productDescription);
    notifyListeners();
  }

  int get itemCount {
    return productDetails.length + 1;
  }

  bool isAddRow(int index) {
    return index == itemCount - 1;
  }

  ProductDescriptionDetail? itemAtIndex(int index) {
    if (index < productDetails.length) {
      return productDetails[index];
    }

    return null;
  }
}
