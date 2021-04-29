import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/presentation/pages/login_page.dart';
import 'package:flutter_application_1/features/compte/presentation/bloc/account_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountPageParent extends StatelessWidget {
  User user;

  AccountPageParent({this.user});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AccountBloc(),
      child: AccountPage(user: user),
    );
  }
}

class AccountPage extends StatelessWidget {
  User user;
  AccountBloc accountBloc;

  AccountPage({this.user});

  @override
  Widget build(BuildContext context) {
    accountBloc = BlocProvider.of<AccountBloc>(context);
    return Scaffold(
      body: Container(
        child: InkWell(
          onTap: () {
            accountBloc.add(LogOutButtonPressedEvent());
          },
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Text("Log Out"),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("${user.uid}"),
              ),
              BlocListener<AccountBloc, AccountState>(
                listener: (context, state) {
                  if (state is LogOutSuccess) {
                    return navigateToSignInPage(context);
                  }
                },
                child: BlocBuilder<AccountBloc, AccountState>(
                    builder: (context, state) {
                  if (state is LogOutInitial) {
                    return Container();
                  } else if (state is LogOutSuccess) {
                    return Container();
                  }
                  return Container();
                }),
              )
            ],
          ),
        ),
      ),
    );
  }

  void navigateToSignInPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return LoginPage();
    }));
  }
}
