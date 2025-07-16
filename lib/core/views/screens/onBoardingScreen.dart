import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masar_app/core/constants/colors.dart';

import '../../constants/data.dart';
import '../widgets/customMainButton.dart';
import '../widgets/customOnBoardingWidget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
  
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int pageIndex=0;
  void initState() {
   _pageController=PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor:kBackgroundColor ,
        body:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 8,),
              pageIndex !=2?   Row(
          mainAxisAlignment:MainAxisAlignment.end ,
          children: [
            Text('تخطي'),
            SvgPicture.asset('assets/images/iconArow.svg')
          ],
                ):SizedBox(),
                SizedBox(height: 30,),
              Expanded(
                child: PageView.builder(
                  itemCount:listOnBoarding.length ,
                  controller: _pageController,
                  onPageChanged:(index){
                    setState(() {
                      pageIndex=index;
                    });
                  } ,
                  itemBuilder:(BuildContext context, int index) { 
                    return CustomOnBoardingWidget(pageIndex:index,);
                   },
                  
                ),
              ),
              SizedBox(height: 24,),
              pageIndex !=2? CustomMainButton(text: 'استمر' ,):CustomMainButton(text:'ابداء' ,),
              SizedBox(height: 50,)
            ],
          ),
        ) ,
      ),
    );
  }
}