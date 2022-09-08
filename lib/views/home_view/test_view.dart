import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamic_app/core/utils/naviagtion.dart';
import 'package:islamic_app/src/colors.dart';
import 'package:islamic_app/views/compass/compass_view.dart';
import 'package:islamic_app/views/doaa/doaa_view.dart';
import 'package:islamic_app/views/home_view/home_view.dart';
import 'package:islamic_app/views/quraan/quraan_list.dart';
import 'package:islamic_app/views/settings/setting_view.dart';
class TestView extends StatefulWidget {
  TestView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _TestViewState createState() => _TestViewState();
}

class _TestViewState extends State<TestView>
    with SingleTickerProviderStateMixin {
  final autoSizeGroup = AutoSizeGroup();
  var _bottomNavIndex = 0; //default index of a first screen

  late AnimationController _animationController;
  late Animation<double> animation;
  late CurvedAnimation curve;

  final iconList = <IconData>[
    Icons.home_outlined,
    Icons.settings,
    Icons.clean_hands_sharp,
    Icons.compass_calibration_sharp,
  ];


  final List<Widget> screens=[
    HomeView(),
    SettingView(),
    DoaaView(),
    CompassView(),
  ];
  final List<String> titles=[
    'Home',
    'Setting',
    'Doaa',
    'Compass',
  ];

  List<String> images=[
    'assets/images/home.svg',
    'assets/images/Heart.svg',
    'assets/images/doaa.svg',
    'assets/images/compass.svg'
  ];


  @override
  void initState() {
    super.initState();
    final systemTheme = SystemUiOverlayStyle.light.copyWith(

      statusBarColor: AppColors.kPrimaryColor,
      systemNavigationBarIconBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(systemTheme);

    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    curve = CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.5,
        1.0,
        curve: Curves.fastOutSlowIn,
      ),
    );
    animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(curve);

    Future.delayed(
      Duration(seconds: 1),
          () => _animationController.forward(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body:  screens[_bottomNavIndex],
        floatingActionButton: ScaleTransition(
          scale: animation,
          child: Container(
            child: FloatingActionButton(
              elevation: 8,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: AppColors.myGradient
                ),
                child: Container(
                  height: 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/images/quran.svg',
                      ),
                    ],
                  ),
                ),

              ),
              onPressed: () {
                AppNavigator.customNavigator(context: context, screen: QuraanListView(), finish: false);
                _animationController.reset();
                _animationController.forward();
              },
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          itemCount: iconList.length,
          tabBuilder: (int index, bool isActive) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                 images[3],
                ),
                // Icon(
                //   iconList[index],
                //   size: 24,
                //   color: color,
                // ),
                const SizedBox(height: 4),

                isActive?
                Container(
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                  ),
                ) : Container()
              ],
            );
          },

          backgroundColor:AppColors.myGradient,
          //AppColors.kPrimaryColor,
          activeIndex: _bottomNavIndex,
          splashColor: Colors.white,
          notchAndCornersAnimation: animation,
          splashSpeedInMilliseconds: 300,
          notchSmoothness: NotchSmoothness.defaultEdge,
          gapLocation: GapLocation.center,
          leftCornerRadius: 32,
          rightCornerRadius: 32,

          onTap: (index) => setState(() => _bottomNavIndex = index),

        ),

    );
  }
}


