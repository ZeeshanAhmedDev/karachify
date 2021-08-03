import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_karachify/Components/custom_checkout_container.dart';
import 'package:flutter_app_karachify/Constants/const.dart';

class CheckoutScreen extends StatelessWidget {
  final cart;
  final sum;

  CheckoutScreen(this.cart, this.sum);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kCheckOutText),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.separated(
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image(
                      image: AssetImage(cart[index].imageUrl),
                    ),
                    title: Text(
                      cart[index].name,
                      style: kProductNameTextStyle,
                    ),
                    trailing: Text(
                      "\$${cart[index].price}",
                      style: kProductPriceTextStyle,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: kDividerLineColor,
                  );
                },
                itemCount: cart.length,
                shrinkWrap: true,
              ),
              Divider(
                color: kFinalDividerLineColor,
              ),
              Center(
                child: Text(
                  "Total : \$$sum",
                  style: kTotalSumText,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    CoolAlert.show(
                      backgroundColor: Theme.of(context).primaryColor,
                      context: context,
                      type: CoolAlertType.success,
                      animType: CoolAlertAnimType.scale,
                      confirmBtnColor: Theme.of(context).primaryColor,
                      title: kCoolAlertTitle,
                      text: kCoolAlertText,
                    );
                  },
                  child: CustomCheckOutContainer(),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
