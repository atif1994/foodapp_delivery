import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodapp_delivery/homeScreen/home_screen.dart';


import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controller/signupController.dart';
import '../widgets/TextWidget.dart';
import '../widgets/Textformfield.dart';
import '../widgets/roundedButton.dart';
import 'login_screen.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phonNumberController = TextEditingController();
  TextEditingController cnicController = TextEditingController();
  TextEditingController ConfirmpasswordController = TextEditingController();
  bool _obscureText = true;
  bool _obscureText2 = true;
  bool selectedMonth = true;
  var confirmPass;
  Map<String, bool> values = {
    'foo': true,
    'bar': false,
  };

  
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child:Padding(
            padding: EdgeInsets.only(
                left: s.width * 0.05, right: s.width * 0.05, top: 12),
            child: Column(
              children: [
                SizedBox(
                  height: s.height * 0.06,
                ),
                TextWidget(text: "Create Account"),
                SizedBox(
                  height: s.height * 0.04,
                ),
                TextFormWidget(

                  onValidate: (val) => val!.isEmpty ? 'Enter Your Name' : null,
                  controller: nameController,
                  icon: Icons.person_outline,
                  name: "Enter your name",
                ),
                SizedBox(
                  height: s.height * 0.04,
                ),
                TextFormWidget(


                  onChange: (val) {
                    if (mounted) {
                      //the email will trow to String that will give to firebaseAuth
                    }
                  },
                  onValidate:   (val) => val!.isEmpty ? 'Enter Email' : null,
                  controller: emailController,
                  icon: Icons.email_outlined,
                  name: "Email Address",
                ),
                SizedBox(
                  height: s.height * 0.04,
                ),
                TextFormWidget(
                  onValidate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Phon Number ';
                    }
                  },
                  controller: phonNumberController,
                  icon: Icons.phone_outlined,
                  name: "Contact Number",
                ),
                SizedBox(
                  height: s.height * 0.04,
                ),
              TextFormField(
                inputFormatters:[

                ]
                ,

                controller:cnicController ,
                validator:(value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter cnic ';
                  }
                },
                decoration: InputDecoration(


                    labelText: 'CNIC',
                    suffixIcon: Icon(Icons.card_membership_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35)
                    )
                ),
              ),

                SizedBox(
                  height: s.height * 0.04,
                ),
                TextFormField(
                  onChanged: (value) {},
                  controller: passwordController,
                  validator: (value) {
                    confirmPass = value;
                    if (value == null || value.isEmpty) {
                      return 'Please enter current password ';
                    }

                    return null;
                  },
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35)),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: s.height * 0.04,
                ),
                TextFormField(


                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Confirm password';
                    }
                    if ( value != confirmPass) {
                      return 'Confirm password not matching';
                    }
                    return null;
                  },
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35)),

                  ),
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: 'Agree with  '),
                        TextSpan(
                          text: 'Terms',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                            text: ' & Condition',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  value: selectedMonth,
                  onChanged: (value) {
                    setState(() {
                      selectedMonth = !selectedMonth;
                    });
                  },
                ),
                RoundedButton(

                  text: "Create Account",
                  onPress: () async{

                    if (_formKey.currentState!.validate()) {
Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));

                    }

                  },
                ),
                SizedBox(
                  height: s.height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.only(left: s.width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("Already have an account?"),
                      SizedBox(width: 12,),
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInScreen()));
                          },
                          child: Text("Login"))
                    ],
                  ),
                ),
                SizedBox(
                  height: s.height * 0.02,
                ),
              ],
            ),
          ),





        ),
      ),
    );
  }
}
