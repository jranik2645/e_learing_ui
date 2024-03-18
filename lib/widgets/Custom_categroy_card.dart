
import 'package:flutter/material.dart';

import '../views/CourseDeletis/coursedeletisscreen.dart';

class CustomCategoryCard extends StatelessWidget {
     final String categoryName;
     final String  icon;
     final dynamic totalCourses;
  const CustomCategoryCard({super.key, required this.categoryName, required this.icon, this.totalCourses});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>CourseDeletisScreen(courseName:categoryName ,)));
        },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 5,
                spreadRadius: .3
            ),
          ],

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment:AlignmentDirectional.centerEnd,
              child: Image.asset(icon,
                height: 100,
                width: 100,

              ),
            ),
            Text(categoryName, style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),),
            Text('$totalCourses Courses', style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),)
          ],
        ),
      ),
    );
  }
}
