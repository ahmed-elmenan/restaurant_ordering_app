import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_svg/svg.dart';

class AddUserPage extends StatefulWidget {
  AddUserPage({Key key}) : super(key: key);

  @override
  _AddUserPageState createState() => _AddUserPageState();
}

class _AddUserPageState extends State<AddUserPage> {
  TextEditingController userPartenariatUserNameController =
      TextEditingController();
  TextEditingController userStatusController = TextEditingController();
  TextEditingController useMobileNumberController = TextEditingController();
  TextEditingController userEmailController = TextEditingController();
  TextEditingController userPasswordController = TextEditingController();

  TextStyle dropDowntextStyle = TextStyle(
    fontSize: 14,
    color: Color(0xFF979BA3),
  );

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
    super.initState();
  }

  List<DropdownMenuItem> _dropdownTypeItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Center(
              child: new Text("Ajouter un utilisateur",
                  style: GlobalTheme.headerStyle(GlobalTheme.ktitleColor)),
            ),
            SizedBox(
              height: 20,
            ),
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
                  controller: userPartenariatUserNameController,
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
                  controller: userPartenariatUserNameController,
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
                  controller: userPartenariatUserNameController,
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
                onPressed: () {},
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
    );
  }
}
