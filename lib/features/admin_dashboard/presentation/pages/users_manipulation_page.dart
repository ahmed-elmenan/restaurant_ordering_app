import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/widgets/loading.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/blocs/fetch_users_bloc/fetch_users_bloc.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/widgets/user_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersManipulationPage extends StatefulWidget {
  @override
  _UsersManipulationPageState createState() => _UsersManipulationPageState();
}

class _UsersManipulationPageState extends State<UsersManipulationPage> {
  // List<UserModel> usersList = [];

  FetchUsersBloc fetchUsersBloc;

  @override
  void initState() {
    super.initState();
    fetchUsersBloc = FetchUsersBloc();
    fetchUsersBloc.add(FetchUsersEvent.fetchUsers());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => fetchUsersBloc,
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(top: 70, right: 30, left: 30),
            child: ListView(children: [
              Center(
                child: Text("Liste des utilisateurs",
                    style: GlobalTheme.headerStyle(GlobalTheme.ktitleColor)),
              ),
              SizedBox(height: 10),
              BlocBuilder<FetchUsersBloc, FetchUsersState>(
                  builder: (context, state) {
                Widget content;
                state.when(initial: () {
                  print('get users init');
                  content = Container();
                }, fetchUsersLoading: () {
                  print('get users Loading');
                  content = Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: buildLoadingUI(),
                  );
                }, fetchUsersSuccess: (usersList) {
                  content = ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: usersList.length,
                        itemBuilder: (context, index) {
                          return UserCard(userModel: usersList[index]);
                        });

                  print('get users success');

                }, fetchUsersFailure: () {
                  content = Container();
                  print('get users failed');
                });
                return content;
              })
            ])),
      ),
    );
  }
}
