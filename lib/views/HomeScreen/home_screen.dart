import 'package:e_learing_project/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import '../../widgets/Custom_categroy_card.dart';
import 'Widgets/homeappbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
      List<Map>categories=[
         {
           'icon' :'images/accounting.png',
            'name' : 'Accounting',
             'total_courses' : 12,
         },
        {
          'icon' :'images/desgin.png',
          'name' : 'Design',
          'total_courses' : 120,
        },
        {
          'icon' :'images/photo.png',
          'name' : 'Photography',
          'total_courses' : 40,
        },
        {
          'icon' :'images/marketing.png',
          'name' : 'Marketing',
          'total_courses' : 50,
        }
      ];
    return Scaffold(

      body: Column(
        children: [
          homeAppBar(size),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(

                  child: Column(
                     children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                              const Text("Explore categories", style: TextStyle(
                                 fontWeight: FontWeight.w700,
                                 fontSize: 20,
                              ),),
                              Text("See All",
                               style: TextStyle(
                                  color: AppColor.PriamyColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                               ),
                              ),
                           ],
                        ),
                        GridView.builder(
                          itemCount: categories.length,
                          shrinkWrap: true,
                            primary: false,

                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 15,
                                mainAxisSpacing: 15,
                                childAspectRatio: .8,
                                crossAxisCount: 2), itemBuilder: (context,index){
                                   final data=categories[index];
                             return CustomCategoryCard(
                               categoryName: data['name'],
                               icon: data['icon'],
                               totalCourses: data['total_courses'],

                             );
                                
                        })
                     ],
                  ),
                ),
              ),
            ),

        ],
      ),
    );
  }


}
