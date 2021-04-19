import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/features/auth/presentation/pages/login_page.dart';
import 'package:flutter_application_1/features/explorer/presentation/pages/explorer_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Init());
  }
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Init extends StatelessWidget {
  AuthBloc authBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc()..add(AuthEvent.started()),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          Widget content;
          state.when(initial: () {
            print("init");
            content = SplashScreen();
          }, authenticatedState: (user) {
            print("Loading...");
            content = ExplorerPage(user: user);
          }, unauthenticatedState: () {
            content = Container(
              child: LoginPageParent(),
            );
          });
          return content;
        },
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: GlobalTheme.kColorLime,
    );
  }
}
