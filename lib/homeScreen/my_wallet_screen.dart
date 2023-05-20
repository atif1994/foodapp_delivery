import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/AppColors.dart';

class MyWalletScreen extends StatefulWidget {
  const MyWalletScreen({Key? key}) : super(key: key);

  @override
  State<MyWalletScreen> createState() => _MyWalletScreenState();
}

class _MyWalletScreenState extends State<MyWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.primaryColor,
        title: Text("MY Wallet"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("ToDays Earning",style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
          ),
          Divider(
            height: 4,
            thickness: 3,
            color: Colors.black38
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("My Earning History",style: TextStyle(
              fontWeight: FontWeight.bold
            ),),


          ),
          Divider(
              height: 4,
              thickness: 3,
              color: Colors.black38
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("My Payment Info",style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
          ),
          Divider(
              height: 4,
              thickness: 3,
              color: Colors.black38
          ),
        ],
      ),
    );
  }
}
