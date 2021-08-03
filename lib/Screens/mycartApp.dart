import 'package:badges/badges.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_karachify/Constants/const.dart';
import 'package:flutter_app_karachify/Model/product_model.dart';
import 'package:get/get.dart';
import '../Components/custome_tile.dart';
import 'CheckoutScreen.dart';
import 'ProductScreen.dart';

class MyCartApp extends StatefulWidget {
  @override
  _MyCartAppState createState() => _MyCartAppState();
}

class _MyCartAppState extends State<MyCartApp> {
  List<ProductModel> cart = [];
  int sum = 0;
  int clicked = 0;
  double iconSize = 30.0;

  coolAlert() {
    CoolAlert.show(
      backgroundColor: Theme.of(context).primaryColor,
      context: context,
      type: CoolAlertType.success,
      animType: CoolAlertAnimType.scale,
      confirmBtnColor: Theme.of(context).primaryColor,
      title: kCoolAlertTitle,
      text: kCoolAlertText,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: kPrimaryColor,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/orange.png'),
                  backgroundColor: kTransparentColor,
                ),
                accountName: Text('Zeeshan Rehman'),
                accountEmail: Text('shanisukk@gmailcom'),
              ),
              CustomListTile(
                icon: CupertinoIcons.home,
                text: 'home',
                iconSize: iconSize,
              ),
              CustomListTile(
                icon: Icons.history,
                text: 'Order History',
                iconSize: iconSize,
              ),
              CustomListTile(
                icon: Icons.favorite_border,
                text: 'Favourite Orders',
                iconSize: iconSize,
              ),
              CustomListTile(
                icon: Icons.event_note_outlined,
                text: 'My Addresses',
                iconSize: iconSize,
              ),
              CustomListTile(
                icon: Icons.credit_card,
                text: 'Karachi-fy Credit',
                iconSize: iconSize,
              ),
              CustomListTile(
                icon: Icons.doorbell_outlined,
                text: 'Notifications',
                iconSize: iconSize,
              ),
              CustomListTile(
                icon: Icons.question_answer_outlined,
                text: 'FAQS',
                iconSize: iconSize,
              ),
              CustomListTile(
                icon: Icons.star_border_outlined,
                text: 'Rate Us',
                iconSize: iconSize,
              ),
              CustomListTile(
                icon: Icons.feedback_outlined,
                text: 'Send Feedback',
                iconSize: iconSize,
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                child: Badge(
                  badgeContent: Text('$clicked'),
                  child: Icon(Icons.shopping_cart),
                  animationType: BadgeAnimationType.scale,
                  badgeColor: Theme.of(context).accentColor,
                  elevation: 0.5,
                ),
                onTap: () {
                  setState(
                    () => Get.to(
                      CheckoutScreen(cart, sum),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(CupertinoIcons.search),
          ),
        ],
        title: Text(kAppTitle),
      ),
      body: ProductScreen(
        (selectedProduct) {
          setState(() {
            cart.add(selectedProduct); //update
            sum = 0;
            cart.forEach((item) {
              sum = sum + item.price;
            });
          });
        },
        clicked++,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          coolAlert();
        },
        tooltip: 'Show SnackBar',
        child: Icon(Icons.add),
      ), //
    );
  }
}
