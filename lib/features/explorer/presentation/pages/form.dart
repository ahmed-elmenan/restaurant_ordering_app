import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/models/order.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/utils/calculate_total.dart';
import 'package:flutter_application_1/core/widgets/dark_layout.dart';
import 'package:flutter_application_1/core/widgets/failure.dart';
import 'package:flutter_application_1/core/widgets/loading.dart';
import 'package:flutter_application_1/core/widgets/order_count.dart';
import 'package:flutter_application_1/features/explorer/data/models/product_static.dart';
import 'package:flutter_application_1/features/explorer/presentation/bloc/add_order_bloc.dart';
import 'package:flutter_application_1/features/explorer/presentation/pages/explorer_page.dart';
import 'package:flutter_application_1/features/explorer/presentation/widgets/ProductOptions.dart';
import 'package:flutter_application_1/features/explorer/presentation/widgets/orders_add_placeholder.dart';
import 'package:flutter_application_1/features/orders/presentation/pages/order_detail.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:uuid/uuid.dart';

class OrderForm extends StatefulWidget {
  UserModel userModel;
  ProductStatic product;
  User user;

  OrderForm(
      {@required this.user, @required this.product, @required this.userModel});

  @override
  _OrderFormState createState() => _OrderFormState();
}

class _OrderFormState extends State<OrderForm>
    with AutomaticKeepAliveClientMixin {
  bool isFavorite = false;
  Icon favoriteIcon =
      Icon(Icons.favorite_border, color: Colors.white, size: 30);
  OrderModel order = OrderModel();
  AddOrderBloc addOrderBloc = AddOrderBloc();
  double res = 75.00;
  int amount = 1;

  onSelectedPressed(int value) {
    setState(() {
      order.total = res * value;
      amount = value;
    });
  }

  void handleAddExtraPrice(double value) {
    print("val" + value.toString());
    setState(() {
      order.total += value * amount;
      res += value;
    });
  }

  void handlesubtractExtraPrice(double value) {
    setState(() {
      order.total -= value * amount;
      res -= value;
    });
  }

  @override
  void initState() {
    var uuid = Uuid();
    order.orderCode = uuid.v4().split('-')[0];

    order.userId = widget.user.uid;
    order.name = widget.product.name;
    order.client = widget.userModel.partenariatUserName;
    order.total = 75.00;
    order.delivered = false;
    order.status = 'En attente';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        child: Stack(
          children: [
            Container(
              height: size.height / 3 + 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/past.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            DarkLayout(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: SvgPicture.asset(
                        "assets/images/back_arrow.svg",
                        color: Colors.white,
                        height: 20,
                        width: 10,
                      )),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (isFavorite == false) {
                          favoriteIcon = Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 30,
                          );
                          isFavorite = true;
                        } else {
                          favoriteIcon = Icon(Icons.favorite_border,
                              color: Colors.white, size: 30);
                          isFavorite = false;
                        }
                      });
                    },
                    child: favoriteIcon,
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0.1,
              child: Container(
                padding: EdgeInsets.only(top: 8),
                width: size.width,
                height: size.height - 340,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: ListView(
                  children: [
                    Text(
                      "Formule Complète",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: GlobalTheme.ktitleColor),
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 63),
                      child: Text(
                        "Soupe + Boisson chaude + Boisson Froide + Extra + Viennoiserie + Beldi + Salé + Plat garni",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: GlobalTheme.kSecondaryText,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ProductOptions(
                        options: entreeChaude,
                        title: "ENTRÉE CHAUDE",
                        order: this.order),
                    ProductOptions(
                        options: boissonFroide,
                        title: "BOISSON FROIDE",
                        order: this.order),
                    ProductOptions(
                        options: boissonChaude,
                        title: "BOISSON CHAUDE",
                        order: this.order),
                    ProductOptions(
                        options: sale, title: "SALE", order: this.order),
                    ProductOptions(
                        options: platGarni,
                        title: "PLAT GARNI",
                        order: this.order),
                    ProductOptions(
                        options: viennoiserie,
                        title: "VIENNOISERIE",
                        order: this.order),
                    ProductOptions(
                        options: completeFormExtra,
                        title: "EXTRA",
                        order: this.order,
                        handleAddExtraPrice: handleAddExtraPrice,
                        handlesubtractExtraPrice: handlesubtractExtraPrice),
                    BlocProvider(
                        create: (context) => addOrderBloc,
                        child: BlocListener<AddOrderBloc, AddOrderState>(
                            listener: (context, state) {
                          Widget content;
                          state.when(initial: () {
                            print("add order init");
                          }, addOrderLoading: () {
                            print("Loading");
                            content = buildLoadingUI();
                          }, addOrderSuccess: () {
                            content = Container();
                            print("zeep it");
                            pushNewScreen(
                              context,
                              screen: Scaffold(
                                  body: OrderDetail(
                                      order: order,
                                      toExplorer: true,
                                      user: widget.user,
                                      userModel: widget.userModel)),
                              withNavBar:
                                  true, // OPTIONAL VALUE. True by default.
                              pageTransitionAnimation:
                                  PageTransitionAnimation.slideRight,
                            );
                          }, addOrderFailed: (String message) {
                            content = FailureWidget(message: message);
                          });
                          return Container();
                        }, child: BlocBuilder<AddOrderBloc, AddOrderState>(
                                builder: (context, state) {
                          Widget content;
                          state.when(initial: () {
                            content = Container();
                          }, addOrderLoading: () {
                            content = buildLoadingUI();
                          }, addOrderSuccess: () {
                            content = Container();
                          }, addOrderFailed: (String message) {
                            content = FailureWidget(message: message);
                          });
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(right: 13, left: 28),
                              margin: EdgeInsets.only(
                                  top: 30, right: 20, left: 20, bottom: 25),
                              decoration: BoxDecoration(
                                color: GlobalTheme.kExtraColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text(
                                      "${order.total.toStringAsFixed(2)} MAD",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  OrderCount(order,
                                      () => onSelectedPressed(order.amount)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 52,
                                    height: 40,
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(35),
                                      ),
                                      border: Border.all(
                                          color: Colors.white, width: 2),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        var uuid = Uuid();
                                        order.id = uuid.v4();
                                        order.totalPrice = order.total;
                                        addOrderBloc.add(
                                            AddOrderEvent.addOrderButtonPressed(
                                                order));
                                        // pushNewScreen(
                                        //   context,
                                        //   screen: Scaffold(
                                        //       body: OrderDetail(order: order)),
                                        //   withNavBar:
                                        //       true, // OPTIONAL VALUE. True by default.
                                        //   pageTransitionAnimation:
                                        //       PageTransitionAnimation.cupertino,
                                        // );
                                      },
                                      child: SvgPicture.asset(
                                        "assets/images/paniers.svg",
                                        color: GlobalTheme.kExtraColor,
                                        height: 16.77,
                                        width: 16.77,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        })))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
