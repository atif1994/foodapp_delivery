import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/AppColors.dart';

class ConditionScreen extends StatefulWidget {
  const ConditionScreen({Key? key}) : super(key: key);

  @override
  State<ConditionScreen> createState() => _ConditionScreenState();
}

class _ConditionScreenState extends State<ConditionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.primaryColor,
        title: Text(
          "Company Conditon and Terms"
        ),
      ),
    );
  }
}
