import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_delivery/constant/AppColors.dart';

import '../widgets/roundedButton.dart';
import 'confirm_order_screen.dart';

class AllOrderScreen extends StatefulWidget {
  const AllOrderScreen({Key? key}) : super(key: key);

  @override
  State<AllOrderScreen> createState() => _AllOrderScreenState();
}

class _AllOrderScreenState extends State<AllOrderScreen> {
  @override
  Widget build(BuildContext context) {
    final s =MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorApp.primaryColor,
          centerTitle: true,
          title: Column(
            children: [
              Text("All orders",style: TextStyle(
                fontSize: 12
              ),),

              Text("User Name",style: TextStyle(
                fontSize: 11
              ),),

              Text("phon Number",style: TextStyle(
                fontSize: 11
              ),),
            ],
          ),
        ),
        body: Column(
mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("Ali shop Address:",style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Customer Name:",style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),)
                      ],

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Address:",style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),)
                      ],

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Phon Number",style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),)
                      ],

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("items:",style: TextStyle(fontWeight: FontWeight.bold),)
                      ],

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("order Pick up time",style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),)
                      ],

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Order Delivery Time:",style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),)
                      ],

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              color: ColorApp.primaryColor,
                            borderRadius: BorderRadius.circular(12)
                          ),

                          height: s.height*0.05,
                          width: s.width*0.18,
                          child: Center(child: Text("Decline")),
                        ),
                      ),
                      SizedBox(width: 20,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmOrderScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: ColorApp.primaryColor,
                            borderRadius: BorderRadius.circular(12)
                          ),

                          height: s.height*0.05,
                          width: s.width*0.18,
                          child: Center(child: Text("Accept")),
                        ),
                      ),


                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
