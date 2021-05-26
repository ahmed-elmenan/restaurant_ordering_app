import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/product.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/features/explorer/data/models/product_static.dart';
import 'package:flutter_application_1/features/explorer/presentation/widgets/product_big_card.dart';
import 'package:flutter_svg/svg.dart';

class RamadanPlatsPage extends StatelessWidget {
  UserModel userModel;
  List<ProductModel> headerProductList;
  User user;

  RamadanPlatsPage(
      {Key key, @required this.headerProductList, @required this.user, @required this.userModel,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: GlobalTheme.kColorLime,
            shadowColor: Colors.transparent,
            title: Container(
              padding: EdgeInsets.only(top: 40, right: 16, left: 16),
              height: 90,
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: SvgPicture.asset(
                        "assets/images/back_arrow.svg",
                        color: Colors.white,
                        height: 17,
                        width: 10,
                      )),
                  Expanded(
                    flex: 2,
                    child: Text("Plats du Ramadan",
                        textAlign: TextAlign.center,
                        style: GlobalTheme.headerStyle(Colors.white)),
                  ),
                  SvgPicture.asset(
                    "assets/images/search.svg",
                    color: Colors.white,
                    height: 16.09,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(
                    "assets/images/filter.svg",
                    height: 16.09,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: this.headerProductList.length,
            itemBuilder: (context, int index) {
              print("${this.headerProductList.length}");
              return Container(
                margin: EdgeInsets.only(bottom: 30),
                padding: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                height: 196,
                child: ProductBigCard(
                  userModel: this.userModel,
                  product: this.headerProductList[index],
                  user: this.user,
                ),
              );
            },
          ),
        ));
  }
}
