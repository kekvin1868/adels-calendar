import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'models/app_navigation_model.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);
  
  @override 
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 375.h,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0XFFFFFFFF),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Text(
                      "App Navigation",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0XFF000000),
                        fontSize: 20.fSize,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "Check your app's UI",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0XFF000000),
                        fontSize: 16.fSize,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Divider(
                    height: 1.h,
                    thickness: 1.h,
                    color: Color(0XFF000000),
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0XFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      _buildScreenTitle(
                        context,
                        screenTitle: "Splash Screen",
                      ),
                    ],
                  )
                )
              )
            )
          ],
        )
      )
    );
  }
  
  Widget _buildScreenTitle(
    BuildContext context, {
      required String screenTitle,
    }) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Text(
              screenTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0XFF000000),
                fontSize: 20.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          SizedBox(height: 5.h),
          Divider(
            height: 1.h,
            thickness: 1.h,
            color: Color(0XFF888888),
          )
        ],
      ),
    );
  }
  
  // Click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}