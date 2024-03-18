import 'package:e_learing_project/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
Widget homeAppBar(Size size) {
  return Container(
    padding: EdgeInsets.only(top: 50, left: 15, right: 15, bottom: 15),
    height: size.height * .28,
    width: size.width,
    decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColor.PriamyColor,
            AppColor.SecondaryColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(40),
          bottomLeft: Radius.circular(40),
        )),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello,',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'Good Morning',
                  style: TextStyle(
                      color: Colors.white.withOpacity(.5),
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.2),
                    shape: BoxShape.circle),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          shape: BoxShape.circle),
                    )
                  ],
                )),
          ],
        ),

        Container(

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white,
          ),
          child: TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search your Text',
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.mic, color: AppColor.PriamyColor,)),
          ),
        )
        // TextFormField(
        //   decoration:  InputDecoration(
        //     filled: true,
        //     hintText: 'Search your Text',
        //     border: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(30),
        //       borderSide:BorderSide.none
        //     ),
        //     prefixIcon: Icon(Icons.search),
        //     fillColor: Colors.white,
        //     suffixIcon: Icon(Icons.)
        //   ),
        //
        // ),
      ],
    ),
    // margin: EdgeInsets.symmetric(horizontal: 10),
  );
}