import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_delivery/constant/AppColors.dart';

class ConfirmOrderScreen extends StatefulWidget {
  const ConfirmOrderScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmOrderScreen> createState() => _ConfirmOrderScreenState();
}

class _ConfirmOrderScreenState extends State<ConfirmOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.primaryColor,
        title: Text("Google Map Used"),
      ),
      body: Column(
        children: [
          Text("Back end data")
        ],
      ),
    );
  }
}
