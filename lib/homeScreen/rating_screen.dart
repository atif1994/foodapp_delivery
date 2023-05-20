import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../constant/AppColors.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  @override
  Widget build(BuildContext context) {
    final s=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.primaryColor,
        title: Text("Please give Rating about services"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(child: Text("Rate the Driver",style: TextStyle(
            fontWeight: FontWeight.bold
          ),)),
          RatingBar(
              initialRating: 0,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              ratingWidget: RatingWidget(
                  full: const Icon(Icons.star, color: ColorApp.primaryColor),
                  half: const Icon(
                    Icons.star_half,
                    color: ColorApp.primaryColor,
                  ),
                  empty: const Icon(
                    Icons.star_outline,
                    color: ColorApp.primaryColor,
                  )),
              onRatingUpdate: (value) {
                setState(() {

                });
              }),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding:
                  EdgeInsets.fromLTRB(s.width*0.3, 0, 0, 0),
                  child: InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          color: ColorApp.primaryColor,
                          borderRadius: BorderRadius.circular(12)
                      ),

                      height: s.height*0.05,
                      width: s.width*0.18,
                      child: Center(child: Text("Skip")),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        color: ColorApp.primaryColor,
                        borderRadius: BorderRadius.circular(12)
                    ),

                    height: s.height*0.05,
                    width: s.width*0.18,
                    child: Center(child: Text("Confirm")),
                  ),
                ),


              ],
            ),
          )

        ],
      ),
    );
  }
}
