import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rameshclothhouse/domain_layer/domain_layer.dart';
import 'package:rameshclothhouse/presentation/bloc/authentication_bloc/authentication_bloc.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/components/responsive.dart';
import 'package:rameshclothhouse/presentation/config/section_keys.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import 'package:rameshclothhouse/presentation/features/login/bloc/login_bloc.dart';
import 'package:rameshclothhouse/presentation/features/login/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<LoginBloc>(
        create: ((context) =>
            LoginBloc(BlocProvider.of<AuthenticationBloc>(context))),
      ),
    ], child: LoginScreenWrapper(key: kLoginScreenWrapperKey));
  }
}

class LoginScreenWrapper extends StatelessWidget {
  late final LoginPage _loginDesktopView;

  LoginScreenWrapper({
    Key? key,
  }) : super(key: key) {
    _loginDesktopView = const LoginPage(
      key: kLoginDesktopViewKey,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        if (state is Authenticated) {
          return Responsive(
              key: key,
              mobile: UserProfilePage(
                key: key,
                user: state.user,
              ),
              desktop: UserProfilePage(
                key: key,
                user: state.user,
              ));
        }
        return Responsive(
          key: key,
          mobile: _loginDesktopView,
          desktop: _loginDesktopView,
        );
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginPage());
  }

  const LoginPage({Key? key}) : super(key: key);

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
                  child: Container(
                    margin: const EdgeInsets.only(top: 50, bottom: 10.0),
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 94.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [],
                    ),
                    child: Text(
                      'Ramesh Cloth House',
                      style: TextStyle(
                        shadows: const [
                          Shadow(
                            blurRadius: 4,
                            color: Colors.black26,
                            offset: Offset(0, 1),
                          )
                        ],
                        color: Theme.of(context).primaryColor,
                        fontSize: 50,
                        fontFamily: 'Anton',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: deviceSize.width > 600 ? 2 : 1,
                  child: LoginForm(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class UserProfilePage extends StatelessWidget {
  AuthenticateResponseDTO user;
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginPage());
  }

  UserProfilePage({
    Key? key,
    required this.user,
  }) : super(key: key);

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
                  child: Container(
                    margin: const EdgeInsets.only(top: 50, bottom: 10.0),
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 94.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Card(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    if (user.user.photo != null)
                                      Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: ClipOval(
                                          child: SizedBox.fromSize(
                                            size: const Size.fromRadius(
                                                30), // Image radius
                                            child: Image.network(
                                                user.user.photo!,
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                    horizontalSpaceRegular,
                                    LatoTextView(
                                      label: user.user.name,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            child: SizedBox(
                              width: 100,
                              child: Card(
                                child: Column(
                                  children: [
                                    LatoTextView(label: user.user.name),
                                    LatoTextView(label: user.user.email),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      context.read<LoginBloc>().add(const LoginEvent.logout());
                    },
                    child: const LatoTextView(label: "Logout"))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
