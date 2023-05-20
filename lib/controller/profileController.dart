// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import '../homeScreen/Edit_Profile.dart';
//
// import '../homeScreen/home_screen.dart';
// import '../sessionservices/session_services.dart';
// import '../utils/utils.dart';
//
// class ProfileController extends ChangeNotifier {
//   bool loading = false;
//   FirebaseAuth auth = FirebaseAuth.instance;
//   DatabaseReference referencePer = FirebaseDatabase.instance.ref().child("profile");
//   String ?dataId;
//
//   void PerfileSave({ required BuildContext context, String ?shopName, String? shopDescription,
//     String? operationHour, String ?servicCatagerious,}) async {
//     loading = true;
//     notifyListeners();
//
//    try{
//      dataId=auth.currentUser?.uid.toString();
//      SessionServices().uid = dataId;
//
//      referencePer.child(dataId.toString()).set({
//        "shopName":shopName,
//        "servicesCatagerious":servicCatagerious,
//        "shopDescription":shopDescription,
//        "operationHour":operationHour,
//        "shopName":operationHour,
//
//      }).then((value) {
//        Utils.toastMessage("data Add");
//
//        loading = false;
//        notifyListeners();
//        Navigator.push(
//            context, MaterialPageRoute(builder: (context) =>EditProfile() ));
//      }).onError((error, stackTrace) {
//        loading = false;
//        notifyListeners();
//        print(error.toString());
//        Utils.toastMessage("Enter Valid Email & Password");
//      });
//    }catch(e){
//      loading = false;
//      notifyListeners();
//
//      Utils.toastMessage(e.toString());
//    }
//   }
//
// }
