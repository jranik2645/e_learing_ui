import 'package:e_learing_project/utils/colors.dart';
import 'package:e_learing_project/views/Nav_bar_videw/nav_bar_view.dart';
import 'package:e_learing_project/widgets/custom_widget_button.dart';
import 'package:flutter/material.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color:AppColor.PriamyColor ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            Image.asset("images/demo.png"),
            Container(
               width: size.width *90,
              height: size.height * .40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              margin: const EdgeInsets.all(12),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                      Text('Discover your next skill\n'
                          'Learn anything your want!',
                        style: TextStyle(
                           fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: AppColor.PriamyColor.withOpacity(0.7)
                        ),
                          textAlign: TextAlign.center,
                      ),
                    Text('Discover the things you want to\n'
                        'learn any grow with theme',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.5)
                      ),
                      textAlign: TextAlign.center,
                    ),
                    CustomButton(title: 'Get Started', width:size.width *.4 ,
                      onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const NavBarView()));
                      },

                    ),
                  ],
               ),
            ),
          ],
        ),
      ),
    );
  }
}
