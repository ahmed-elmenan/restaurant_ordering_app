import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/product.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/blocs/add_product_bloc/add_product_bloc.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/widgets/product_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductManipulatioPAge extends StatefulWidget {
  @override
  _ProductManipulatioPAgeState createState() => _ProductManipulatioPAgeState();
}

class _ProductManipulatioPAgeState extends State<ProductManipulatioPAge> {
  List<Product> productList = [];

  var _scaffoldKey = new GlobalKey<ScaffoldState>();

  AddProductBloc addProductBloc;

  @override
  void initState() {
    super.initState();
    addProductBloc = AddProductBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: Padding(
            padding: const EdgeInsets.only(top: 70, right: 30, left: 30),
            child: Column(children: [
              Center(
                child: Text("Liste des produits",
                    style: GlobalTheme.headerStyle(GlobalTheme.ktitleColor)),
              ),
              SizedBox(height: 10),
              ProductCard()
            ])),
        floatingActionButton: new FloatingActionButton(
            elevation: 0.0,
            child: new Icon(Icons.add),
            backgroundColor: GlobalTheme.kAdminBottmBarColor,
            onPressed: () {
              _showDialog();
            }));
  }

  void _showDialog() {
    // flutter defined function
    showDialog(
      context: _scaffoldKey.currentContext,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          title: Container(
            child: Center(
              child: new Text("Ajouter un produit",
                  style: GlobalTheme.headerStyle(GlobalTheme.ktitleColor)),
            ),
          ),
          content: new BlocProvider(
            create: (context) => addProductBloc,
            child: AddProductForms(),
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class AddProductForms extends StatelessWidget {
  TextEditingController productNameController = TextEditingController();
  TextEditingController productDescriptionController = TextEditingController();
  TextEditingController productPriceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      height: MediaQuery.of(context).size.height - 400,
      child: ListView(
        children: [
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
                controller: productNameController,
                decoration: InputDecoration(
                  hintText: "Nom de produit",
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
                controller: productDescriptionController,
                decoration: InputDecoration(
                  hintText: "Description de produit",
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
                controller: productPriceController,
                decoration: InputDecoration(
                  hintText: "Prix de produit",
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
                // controller: productPriceController,
                decoration: InputDecoration(
                  hintText: "Upload image de produit",
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
          ConstrainedBox(
            constraints:
                BoxConstraints.tightFor(width: double.infinity, height: 60),
            child: ElevatedButton(
              child: Text(
                "Ajouter",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              onPressed: () async {
                // loginBloc.add(LoginButtonPressEvent.started(
                //     username: usernameController.text.trim(),
                //     password: passwordController.text));
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
        ],
      ),
    );
  }
}
