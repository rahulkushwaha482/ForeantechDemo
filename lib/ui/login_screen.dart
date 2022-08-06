import 'package:flutter/material.dart';
import 'package:forentech_assignment/core/constant/app_theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.themeColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    scale: 1.5,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'WelCome TO',
                  style: TextStyle(fontSize: 25, color: AppTheme.whiteColor),
                ),
                const Text(
                  'FNF Coliving',
                  style: TextStyle(fontSize: 25, color: AppTheme.whiteColor),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Login in as',
                  style: TextStyle(fontSize: 22, color: AppTheme.whiteColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                _widgetGuest(),
                const SizedBox(
                  height: 20,
                ),
                _widgetTenant(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _widgetGuest() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 190,
      child: Card(
        elevation: 5,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        color: AppTheme.whiteColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: AppTheme.themeColor,
                      borderRadius: BorderRadius.circular(100)
                      //more than 50% of width makes circle
                      ),
                  child: Image.asset(
                    'assets/icons/account.png',
                    scale: 1.2,
                  )),
              const Text(
                'Guest',
                style: TextStyle(fontSize: 18, color: AppTheme.themeColor),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _widgetTenant() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 190,
      child: Card(
        elevation: 5,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        color: AppTheme.whiteColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: AppTheme.themeColor,
                      borderRadius: BorderRadius.circular(100)
                      //more than 50% of width makes circle
                      ),
                  child: Image.asset(
                    'assets/icons/account.png',
                    scale: 1.2,
                  )),
              const Text(
                'Tenant',
                style: TextStyle(fontSize: 18, color: AppTheme.themeColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
