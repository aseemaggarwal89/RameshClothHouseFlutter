// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rameshclothhouse/presentation/features/editProduct/bloc/edit_product_bloc.dart';

import '../../../domain_layer/utils/network_exceptions.dart';

class EditProductScreen extends StatelessWidget {
  static const routeName = '/edit-product';

  const EditProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<EditProductBloc>(
          create: ((context) => EditProductBloc()),
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

class EditProductForm extends StatelessWidget {
  final passwordFocusNode = FocusNode();
  late final GlobalKey<FormState> _form;

  EditProductForm({Key? key, required GlobalKey<FormState> form})
      : super(key: key) {
    _form = form;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProductBloc, EditProductState>(
        builder: ((context, state) {
      EditProductBloc bloc = context.read<EditProductBloc>();
      return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 8.0,
        child: Container(
          height: 500,
          constraints: const BoxConstraints(minHeight: 260),
          width: 450,
          padding: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _form,
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
                ],
              ),
            ),
          ),
        ),
      );
    }));
  }

  void _validateForm() {
    final isValid = _form.currentState?.validate();
    if (!(isValid ?? false)) {
      return;
    }

    // _form.currentState?.save();
  }
}
