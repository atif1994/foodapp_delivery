import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_delivery/homeScreen/my_wallet_screen.dart';
import 'package:foodapp_delivery/homeScreen/rating_screen.dart';
import 'package:foodapp_delivery/homeScreen/term_condition_screen.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../constant/AppColors.dart';
import '../loginScreen/login_screen.dart';
import 'Address_screen.dart';
import 'Edit_Profile.dart';
import 'all_order_screen.dart';
import 'create_order_screen.dart';

class HomeScreen extends StatefulWidget {
  String? city;
  String? house;
  String? adminsistrativeArea;

  HomeScreen({
    Key? key,
    this.city,
    this.house,
    this.adminsistrativeArea,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorApp.primaryColor,
          title: Text("user Name"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              createDrawerBodyItem(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AllOrderScreen()));
                },
                  icon: Icons.home_repair_service,
                  text: "All orders"),
              Divider(
                color: Colors.black38,
              ),

              createDrawerBodyItem(text: "My Wallet",
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyWalletScreen()));
              },
              icon: Icons.wallet
              ),
              Divider(
                color: Colors.black38,
              ),
              createDrawerBodyItem(
                icon: Icons.person,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfile()));
                  },

                  text: "Edit Profile"),
              Divider(
                color: Colors.black38,
              ),

              createDrawerBodyItem(text: "Rating",
              icon: Icons.star,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RatingScreen()));

                }

              ),
              Divider(
                color: Colors.black38,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ConditionScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text("Setting Terms and  Condition",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                  SizedBox(height: 12,),

                ],
              ),
              createDrawerBodyItem(text: "LogOut",
                  icon: Icons.logout
              ),


            ],
          ),
        ), 
      ),
    );
  }

  Widget createDrawerBodyItem(
      {IconData? icon, String? text, GestureTapCallback? onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text!),
          )
        ],
      ),
      onTap: onTap,
    );
  }

  Widget createDrawerHeader() {
    return Container(
      color: ColorApp.primaryColor,
      child: DrawerHeader(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(),
          child: Stack(children: <Widget>[
            Positioned(
                bottom: 12.0,
                left: 16.0,
                child: Text("name",
                    style: TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.w500))),
          ])),
    );
  }
}
