import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/widgets/loading.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/blocs/add_user_bloc/add_user_bloc.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/pages/users_manipulation_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class AddUserPage extends StatefulWidget {
  AddUserPage({Key key}) : super(key: key);

  @override
  _AddUserPageState createState() => _AddUserPageState();
}

class _AddUserPageState extends State<AddUserPage> {
  TextEditingController userPartenariatUserNameController =
      TextEditingController();
  TextEditingController userCompanyNameController = TextEditingController();
  TextEditingController userStatusController = TextEditingController();
  TextEditingController useMobileNumberController = TextEditingController();
  TextEditingController userEmailController = TextEditingController();
  TextEditingController userPasswordController = TextEditingController();

  AddUserBloc addUserBloc;

  UserModel userModel;

  TextStyle dropDowntextStyle = TextStyle(
    fontSize: 14,
    color: Color(0xFF979BA3),
  );

  Widget errorMessage = Container();

  var _selectedType;

  List<String> dropDownItems = ["Admin", "Utilisateur simple"];

  List<DropdownMenuItem> buildDropdownTestItems(List dropDownItems) {
    List<DropdownMenuItem> items = List();
    for (var i in dropDownItems) {
      items.add(
        DropdownMenuItem(
          value: i,
          child: Text(
            i,
            style: dropDowntextStyle,
          ),
        ),
      );
    }
    return items;
  }

  onChangeDropdownTypes(selectedTest) {
    print(">user type>>" + selectedTest);
    setState(() {
      _selectedType = selectedTest;
    });
  }

  @override
  void initState() {
    _dropdownTypeItems = buildDropdownTestItems(dropDownItems);
    addUserBloc = AddUserBloc();
    userModel = UserModel();
    super.initState();
  }

  List<DropdownMenuItem> _dropdownTypeItems;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => addUserBloc,
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(top: 70, right: 30, left: 30),
            child: ListView(children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: SvgPicture.asset(
                        "assets/images/back_arrow.svg",
                        color: GlobalTheme.kAccountTitleColor,
                        height: 17,
                        width: 10,
                      ))),
              SizedBox(
                height: 10,
              ),
              BlocListener<AddUserBloc, AddUserState>(
                listener: (context, state) {
                  Widget content;
                  state.when(initial: () {
                    content = buildInitUI();
                  }, addUserLoading: () {
                    content = Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: buildLoadingUI(),
                    );
                  }, addUserSuccess: () {
                    print("add user success");
                    content = Container();
                    pushNewScreen(
                      context,
                      screen: UsersManipulationPage(),
                      withNavBar: true, // OPTIONAL VALUE. True by default.
                      pageTransitionAnimation:
                          PageTransitionAnimation.cupertino,
                    );
                  }, addUserFailed: () {
                    print("add user failed");
                    content = Container();
                  });
                  return content;
                },
                child: BlocBuilder<AddUserBloc, AddUserState>(
                  builder: (context, state) {
                    Widget content;
                    state.when(initial: () {
                      content = buildInitUI();
                    }, addUserLoading: () {
                      content = Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: buildLoadingUI(),
                      );
                    }, addUserSuccess: () {
                      print("add user success");
                      content = Container();
                    }, addUserFailed: () {
                      print("add user failed");
                      content = Container();
                    });
                    return content;
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              errorMessage,
              Form(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 17),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: TextField(
                    controller: userPartenariatUserNameController,
                    decoration: InputDecoration(
                      hintText: "Identifiant de partenariat d'utilisateur",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF979BA3),
                      ),
                      // filled: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 17),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: TextField(
                    controller: userCompanyNameController,
                    decoration: InputDecoration(
                      hintText: "nom de seociété d'utilisateur",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF979BA3),
                      ),
                      // filled: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 17),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: TextField(
                    controller: userEmailController,
                    decoration: InputDecoration(
                      hintText: "Email d'utilisateur",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF979BA3),
                      ),
                      // filled: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 17),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: TextField(
                    controller: userPasswordController,
                    decoration: InputDecoration(
                      hintText: "Mot de passe d'utilisateur",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF979BA3),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 17),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: TextField(
                    controller: useMobileNumberController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Numéro de téléphone d'utilisateur",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF979BA3),
                      ),
                      // filled: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 17),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: DropdownButton(
                    isExpanded: true,
                    style: dropDowntextStyle,
                    underline: SizedBox(),
                    iconDisabledColor: GlobalTheme.kOrderCardArrow,
                    hint: Text("Type d'utilisateur", style: dropDowntextStyle),
                    value: _selectedType,
                    items: _dropdownTypeItems,
                    onChanged: onChangeDropdownTypes,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ConstrainedBox(
                constraints:
                    BoxConstraints.tightFor(width: double.infinity, height: 60),
                child: ElevatedButton(
                  child: Text(
                    "Ajouter",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    if (userPartenariatUserNameController.text.trim().isEmpty ||
                        userEmailController.text.trim().isEmpty ||
                        userPasswordController.text.trim().isEmpty ||
                        userCompanyNameController.text.trim().isEmpty ||
                        useMobileNumberController.text.trim().isEmpty ||
                        _selectedType == null) {
                      setState(() {
                        errorMessage = Container(
                          child: Text(
                            "Quelque champ est vide",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red),
                          ),
                        );
                      });
                    } else {
                      print(_selectedType);
                      userModelInit();
                      setState(() {
                        errorMessage = Container();
                      });
                      addUserBloc
                          .add(AddUserEvent.addUserButtonPressed(userModel));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: GlobalTheme.kAdminBottmBarColor,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                ),
              ),
            ])),
      ),
    );
  }

  userModelInit() {
    userModel.partenariatUserName =
        userPartenariatUserNameController.text.trim();
    userModel.email = userEmailController.text.trim();
    userModel.password = userPasswordController.text;
    userModel.companyName = userCompanyNameController.text.trim();
    userModel.mobileNumber = useMobileNumberController.text.trim();
    userModel.status = _selectedType == 'Admin' ? 'admin' : 'regular';
  }

  Widget buildInitUI() {
    return Center(
      child: new Text("Ajouter un utilisateur",
          style: GlobalTheme.headerStyle(GlobalTheme.ktitleColor)),
    );
  }
}
