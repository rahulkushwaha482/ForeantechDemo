import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:forentech_assignment/core/utils/app_routes.dart';
import 'package:forentech_assignment/ui/guest_login.dart';
import 'package:forentech_assignment/ui/login_screen.dart';
import 'package:forentech_assignment/ui/otp_screen.dart';
import 'package:forentech_assignment/ui/splash_screen.dart';
import 'package:forentech_assignment/ui/tenant_login.dart';

void main()  {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light));

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        initialRoute:  StringConfig.SPLASH_SCREEN,
        routes: <String, WidgetBuilder>{
          StringConfig.LOGIN_PAGE_NEW: (BuildContext context) =>
          const LoginScreen(),
          StringConfig.GUEST_LOGIN: (BuildContext context) =>
          const GuestLogin(),
          StringConfig.TENANT_LOGIN: (BuildContext context) =>
          const TenantLogin(),
          StringConfig.OTP_SCREEN: (BuildContext context) =>
          const OtpScreen(),
        });
  }
}
