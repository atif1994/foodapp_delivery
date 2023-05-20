import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../homeScreen/home_screen.dart';
import '../sessionservices/session_services.dart';
import '../utils/utils.dart';

class SignUpController extends ChangeNotifier {
  bool loading = false;
  FirebaseAuth auth = FirebaseAuth.instance;
  DatabaseReference reference = FirebaseDatabase.instance.ref().child("user");

  void SignUp({required BuildContext context, String ?name, String? phonNumber,
      String? email, String ?password,String? cnic}) async {
    loading = true;
    notifyListeners();

    try {
      auth
          .createUserWithEmailAndPassword(email: email.toString(), password: password.toString())
          .then((value) {
        SessionServices().uid = value.user!.uid.toString();
        reference.child(value.user!.uid.toString()).set({
          "uid": value.user!.uid.toString(),
          "email": value.user!.email.toString(),
          "password": password,
          "cnic": cnic,
          "phon": phonNumber,
          "userName": name,
        }).then((value) {
          Utils.toastMessage("successful login");
          loading = false;
          notifyListeners();
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        }).onError((error, stackTrace) {
          loading = false;
          notifyListeners();
          print(error.toString());
          Utils.toastMessage("Enter Valid Email & Password");
        });
      }).onError((error, stackTrace) {
        loading = false;
        notifyListeners();
        print(error.toString());
        Utils.toastMessage("Enter Valid Email & Password");
      });
    } catch (e) {
      loading = false;
      notifyListeners();

      Utils.toastMessage(e.toString());
    }
  }
}
