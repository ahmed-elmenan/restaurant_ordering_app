import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/product.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/widgets/loading.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/blocs/add_product_bloc/add_product_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uuid/uuid.dart';

class AddProductForms extends StatefulWidget {
  @override
  _AddProductFormsState createState() => _AddProductFormsState();
}

class _AddProductFormsState extends State<AddProductForms> {
  AddProductBloc addProductBloc;
  TextEditingController productNameController = TextEditingController();
  TextEditingController productDescriptionController = TextEditingController();
  TextEditingController productPriceController = TextEditingController();
  ProductModel productModel;

  @override
  void initState() {
    // TODO: implement initState
    addProductBloc = AddProductBloc();
    productModel = ProductModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => addProductBloc,
      child: ListView(
        children: [
          BlocListener<AddProductBloc, AddProductState>(
            listener: (context, state) {
              Widget content;
              state.when(initial: () {
                print('add prd init');
                content = Container();
              }, addProductLoading: () {
                content = Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: buildLoadingUI(),
                );
              }, addProductSuccess: () {
                print("add prd success");
                content = Container(
                  child: Center(child: Text("product card")),
                );
              }, addProductFailed: () {
                print("add prd success");
                content = Container();
              });
              return content;
            },
            child: BlocBuilder<AddProductBloc, AddProductState>(
                builder: (context, state) {
              Widget content;
              state.when(initial: () {
                print('add prd init');
                content = Container();
              }, addProductLoading: () {
                content = Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: buildLoadingUI(),
                );
              }, addProductSuccess: () {
                print("add prd success");
                content = Container();
              }, addProductFailed: () {
                print("add prd success");
                content = Container();
              });
              return content;
            }),
          ),
          new Text("Ajouter un produit",
              style: GlobalTheme.headerStyle(GlobalTheme.ktitleColor)),
          Align(
              alignment: Alignment.centerLeft,
              child: SvgPicture.asset(
                "assets/images/back_arrow.svg",
                color: Color(0xFF4F545D),
                height: 20,
                width: 10,
              )),
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
              onPressed: () {
                var uuid = Uuid();
                productModel.id = uuid.v4();
                productModel.name = productNameController.text.trim();
                productModel.description =
                    productDescriptionController.text.trim();
                productModel.imageURL = "imageUrl1";
                addProductBloc
                    .add(AddProductEvent.addProductButtonPressed(productModel));
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
    ));
  }
}
