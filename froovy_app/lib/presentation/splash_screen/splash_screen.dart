import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'provider/splash_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SplashProvider(),
      child: SplashScreen(),
    );
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(
          left: 20.h,
          top: 112.h,
          right: 20.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [_buildFroovySection(context)]
        )
      )
    );
  }
  
  Widget _buildFroovySection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSplashOrange,
                width: 204.h,
                height: 204.h,
                radius: BorderRadius.circular(
                  102.h,
                ),
                margin: EdgeInsets.only(
                  left: 4.h,
                  right: 10.h,
                ),
              ),
              SizedBox(height: 22.h),
              Text(
                "lbl_froovy".tr,
                style: CustomTextStyles.displayLargeEpilogue,
              )
            ],
          ),
          SizedBox(height: 26.h),
          Text(
            "lbl_peeling_good".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.titleLargeInter.copyWith(
              height: 1.30,
            ),
          )
        ],
      )
    );
  }
}