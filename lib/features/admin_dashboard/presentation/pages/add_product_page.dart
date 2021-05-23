import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/product.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/widgets/loading.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/blocs/add_product_bloc/add_product_bloc.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/blocs/upload_image_bloc/upload_image_bloc.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/pages/products_manipulation_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:uuid/uuid.dart';
import 'package:path/path.dart';

class AddProductForms extends StatefulWidget {
  @override
  _AddProductFormsState createState() => _AddProductFormsState();
}

class _AddProductFormsState extends State<AddProductForms> {
  AddProductBloc addProductBloc;
  UploadImageBloc uploadImageBloc;
  TextEditingController productNameController = TextEditingController();
  TextEditingController productDescriptionController = TextEditingController();
  TextEditingController productPriceController = TextEditingController();
  TextEditingController productImageController = TextEditingController();

  ProductModel productModel;
  File pickedImage;

  @override
  void initState() {
    // TODO: implement initState
    addProductBloc = AddProductBloc();
    uploadImageBloc = UploadImageBloc();
    productModel = ProductModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MultiBlocProvider(
      providers: [
        BlocProvider<AddProductBloc>(
          create: (context) => addProductBloc,
        ),
        BlocProvider<UploadImageBloc>(
          create: (context) => uploadImageBloc,
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.only(top: 70, right: 30, left: 30),
        child: ListView(
          children: [
            BlocListener<UploadImageBloc, UploadImageState>(
              listener: (context, state) {
                Widget content;
                state.when(initial: () {
                  print('upload init');
                  content = Container();
                }, imageUploadLoading: () {
                  content = Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: buildLoadingUI(),
                  );
                }, imageUploadSuccess: (image) {
                  print("upload success");
                  productImageController.text = basename(image.path);
                  content = Container(
                    child: Center(child: Text("product card")),
                  );
                }, imageUploadFailed: () {
                  print("upload success");
                  content = Container();
                });
                return content;
              },
              child: BlocBuilder<UploadImageBloc, UploadImageState>(
                  builder: (context, state) {
                Widget content;
                state.when(initial: () {
                  print('upload init');
                  content = Container();
                }, imageUploadLoading: () {
                  content = Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: buildLoadingUI(),
                  );
                }, imageUploadSuccess: (image) {
                  pickedImage = image;
                  content = Container(
                    child: Image.file(File(image.path)),
                  );
                  print("upload success");
                  print(image.path);
                }, imageUploadFailed: () {
                  print("upload failed");
                  content = Container();
                });
                return content;
              }),
            ),
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
                  pushNewScreen(
                    context,
                    screen: ProductManipulatioPAge(),
                    withNavBar: true, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                }, addProductFailed: () {
                  print("add prd failed");
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
                  print("add prd failed");
                  content = Container();
                });
                return content;
              }),
            ),
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
              child: new Text("Ajouter un produit",
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
                  onTap: () {
                    uploadImageBloc
                        .add(UploadImageEvent.uploadImageButtonPressed());
                  },
                  controller: productImageController,
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
                  productModel.price =
                      double.parse(productPriceController.text.trim());
                  productModel.description =
                      productDescriptionController.text.trim();

                  addProductBloc.add(AddProductEvent.addProductButtonPressed(
                      productModel, pickedImage));
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
      ),
    ));
  }
}
