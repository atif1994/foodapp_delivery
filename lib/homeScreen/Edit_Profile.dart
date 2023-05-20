import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/AppColors.dart';

import '../widgets/profileWidget.dart';


class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.primaryColor,
        title: Text("Edit Profile"),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            onTap: () {

            },
            leading: Text(
              "Personal Info",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            trailing: Icon(
              Icons.edit,
              color: ColorApp.primaryColor,
            ),
          ),
          ProfileWidget(
            title: 'User Name',
            iconData: Icons.person_outline,
            value: "",
          ),
          ProfileWidget(
            title: 'email',
            iconData: Icons.email,
            value: "",
          ),
          ProfileWidget(
            title: 'phon Number',
            iconData: Icons.phone,
            value: "",
          ),
          ProfileWidget(
            title: 'Cnic',
            iconData: Icons.sd_card,
            value: "",
          ),

        ],
      ),


    );


  }
}
