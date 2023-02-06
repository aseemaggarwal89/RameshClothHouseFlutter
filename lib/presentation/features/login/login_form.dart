import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/features/login/bloc/login_bloc.dart';
import 'package:rameshclothhouse/presentation/features/login/view_model.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginFailed) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: LatoTextView(label: state.errorMessage)),
            );
        }
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 8.0,
        child: Container(
          height: 300,
          constraints: const BoxConstraints(minHeight: 260),
          width: 450,
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _UsernameInput(),
                _PasswordInput(),
                const Padding(padding: EdgeInsets.all(12)),
                _SubmitButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _UsernameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return TextField(
          key: const Key('loginForm_usernameInput_textField'),
          onChanged: (username) => context
              .read<LoginBloc>()
              .add(LoginEvent.usernamechanges(username: username)),
          decoration: InputDecoration(
            labelText: 'username',
            errorText: context.read<LoginBloc>().username.invalid
                ? (context.read<LoginBloc>().username.error?.errorMessage() ??
                    "Please enter valid email address")
                : null,
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => current != previous,
      builder: (context, state) {
        return TextField(
          key: const Key('loginForm_passwordInput_textField'),
          obscureText: true,
          onChanged: (password) => context
              .read<LoginBloc>()
              .add(LoginEvent.passwordchanged(password: password)),
          decoration: InputDecoration(
            labelText: 'password',
            errorText: context.read<LoginBloc>().password.invalid
                ? (context.read<LoginBloc>().password.error?.errorMessage() ??
                    "Please enter password")
                : null,
          ),
        );
      },
    );
  }
}

// ignore: must_be_immutable
class _SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => current != previous,
      builder: (context, state) {
        if (state is Loginloading) {
          return const CircularProgressIndicator();
        }

        return Container(
          margin: const EdgeInsets.only(top: 20),
          height: 40,
          child: ElevatedButton(
            key: const Key('loginForm_continue_raisedButton'),
            child: const LatoTextView(
              label: "LOGIN",
              color: Colors.white,
            ),
            onPressed: () {
              context.read<LoginBloc>().add(const LoginEvent.loginuser());
            },
          ),
        );
      },
    );
  }
}
