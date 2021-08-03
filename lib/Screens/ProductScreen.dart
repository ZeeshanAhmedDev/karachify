import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_karachify/Constants/const.dart';
import 'package:flutter_app_karachify/Model/product_model.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ProductScreen extends StatefulWidget {
  final ValueSetter<ProductModel> _valueSetter;
  int clicked = 0;

  ProductScreen(this._valueSetter, this.clicked);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<ProductModel> products = [
    ProductModel(name: 'Zinger', price: 350, imageUrl: 'images/hamburger.png'),
    ProductModel(name: 'Pop Corn', price: 79, imageUrl: 'images/popcorn.png'),
    ProductModel(name: 'Coffee', price: 200, imageUrl: 'images/paper-cup.png'),
    ProductModel(name: 'Chai', price: 50, imageUrl: 'images/chai-tea.png'),
    ProductModel(name: 'Pakoras', price: 250, imageUrl: 'images/pakora.png'),
    ProductModel(
        name: 'Ice Cream', price: 250, imageUrl: 'images/ice-cream.png'),
    ProductModel(name: 'Samosas', price: 250, imageUrl: 'images/samosa.png'),
    ProductModel(
        name: 'Cold Drink', price: 60, imageUrl: 'images/cold-drink.png'),
    ProductModel(
        name: 'Mango Juice', price: 100, imageUrl: 'images/mai-thai.png'),
    ProductModel(name: 'Pizza', price: 300, imageUrl: 'images/pizza.png'),
    ProductModel(name: 'sandwich', price: 60, imageUrl: 'images/sandwich.png'),
    ProductModel(
        name: 'Orange Juice', price: 250, imageUrl: 'images/orange-juice.png'),
    ProductModel(name: 'Oranges', price: 250, imageUrl: 'images/orange.png'),
    ProductModel(
        name: 'PineApple Juice',
        price: 250,
        imageUrl: 'images/pineapple-juice.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
              products[index].imageUrl,
            ),
            title: Text(
              products[index].name,
              style: kProductNameTextStyle,
            ),
            trailing: Text(
              "\$${products[index].price}",
              style: kProductPriceTextStyle,
            ),
            onTap: () {
              setState(() {
                Alert(
                  style: kAlertStyleWithTextStyle,
                  context: context,
                  type: AlertType.info,

                  title: kAlertTitle,
                  // desc: "Flutter is more awesome with RFlutter Alert.",
                  buttons: [
                    DialogButton(
                      child: Text(
                        'Add',
                        style: kDialogButtonTextStyle,
                      ),
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context);
                          widget._valueSetter(products[index]);
                        });
                      },
                      color: Theme.of(context).accentColor,
                    ),
                    DialogButton(
                      child: Text(
                        'Cancel',
                        style: kDialogButtonTextStyle,
                      ),
                      onPressed: () => Navigator.pop(context),
                      color: kDialogCancelButtonColor.shade900,
                    )
                  ],
                ).show();

                // cross(0);
              });
            },
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: kDividerLineColor,
          );
        },
        itemCount: products.length,
      ),
    );
  }
}
