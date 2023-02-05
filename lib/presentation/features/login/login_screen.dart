import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:rameshclothhouse/gen/assets.gen.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/components/responsive.dart';
import 'package:rameshclothhouse/presentation/config/section_keys.dart';
import 'package:rameshclothhouse/presentation/features/home/home.dart';
import 'package:rameshclothhouse/presentation/features/login/bloc/login_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<LoginBloc>(
        create: ((context) => LoginBloc()),
      ),
    ], child: LoginScreenWrapper(key: kLoginScreenWrapperKey));
  }
}

class LoginScreenWrapper extends StatelessWidget {
  late final LoginDesktopView _loginDesktopView;

  LoginScreenWrapper({
    Key? key,
  }) : super(key: key) {
    _loginDesktopView = const LoginDesktopView(
      key: kLoginDesktopViewKey,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(
      key: key,
      mobile: _loginDesktopView,
      desktop: _loginDesktopView,
    );
  }
}

class LoginDesktopView extends StatelessWidget {
  const LoginDesktopView({super.key});
  Duration get loginTime => Duration(milliseconds: 12.ceil() * 2250);

  Future<String?> _loginUser(LoginData data) {
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String?> _signupUser(SignupData data) {
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String?> _recoverPassword(String name) {
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String?> _signupConfirm(String error, LoginData data) {
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      theme: LoginTheme(
        primaryColor: Theme.of(context).primaryColor,
        pageColorLight: Theme.of(context).primaryColorLight,
        pageColorDark: Theme.of(context).primaryColorLight,
      ),
      title: "Ramesh Cloth House",
      headerWidget: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const LatoTextView(label: "Login"),
          ],
        ),
      ),
      onConfirmRecover: _signupConfirm,
      onConfirmSignup: _signupConfirm,
      loginProviders: [
        LoginProvider(
          button: Buttons.google,
          label: 'Google',
          callback: () async {
            return null;
          },
        ),
        LoginProvider(
          button: Buttons.facebook,
          label: "Facebook",
          callback: () async {
            return null;
          },
        ),
      ],
      initialAuthMode: AuthMode.signup,
      additionalSignupFields: [
        const UserFormField(
          keyName: 'Username',
          icon: Icon(FontAwesomeIcons.userLarge),
        ),
        const UserFormField(
          keyName: 'Name',
          icon: Icon(FontAwesomeIcons.userLarge),
        ),
        const UserFormField(keyName: 'Surname'),
        UserFormField(
          keyName: 'phone_number',
          displayName: 'Phone Number',
          userType: LoginUserType.phone,
          fieldValidator: (value) {
            final phoneRegExp = RegExp(
              '^(\\+\\d{1,2}\\s)?\\(?\\d{3}\\)?[\\s.-]?\\d{3}[\\s.-]?\\d{4}\$',
            );
            if (value != null &&
                value.length < 7 &&
                !phoneRegExp.hasMatch(value)) {
              return "This isn't a valid phone number";
            }
            return null;
          },
        ),
      ],
      onLogin: (loginData) {
        debugPrint('Login info');
        debugPrint('Name: ${loginData.name}');
        debugPrint('Password: ${loginData.password}');
        return _loginUser(loginData);
      },
      onSignup: (signupData) {
        debugPrint('Signup info');
        debugPrint('Name: ${signupData.name}');
        debugPrint('Password: ${signupData.password}');

        signupData.additionalSignupData?.forEach((key, value) {
          debugPrint('$key: $value');
        });
        if (signupData.termsOfService.isNotEmpty) {
          debugPrint('Terms of service: ');
          for (final element in signupData.termsOfService) {
            debugPrint(
              ' - ${element.term.id}: ${element.accepted == true ? 'accepted' : 'rejected'}',
            );
          }
        }
        return _signupUser(signupData);
      },
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(
          FadePageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      },
      onRecoverPassword: (name) {
        debugPrint('Recover password info');
        debugPrint('Name: $name');
        return _recoverPassword(name);
        // Show new password dialog
      },
    );
  }
}

class FadePageRoute<T> extends MaterialPageRoute<T> {
  FadePageRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
  }) : super(
          builder: builder,
          settings: settings,
        );

  @override
  Duration get transitionDuration => const Duration(milliseconds: 600);

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    // if (settings.name == LoginScreen.routeName) {
    //   return child;
    // }

    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
