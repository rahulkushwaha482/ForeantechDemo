import 'package:flutter/material.dart';
import 'package:forentech_assignment/core/constant/app_theme.dart';

class TenantLogin extends StatefulWidget {
  const TenantLogin({Key? key}) : super(key: key);

  @override
  _TenantLoginState createState() => _TenantLoginState();
}

class _TenantLoginState extends State<TenantLogin> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.themeColor,
        leading:

        Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset('assets/images/logo.png')),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 200, left: 10, right: 10),
                  child: Card(
                    elevation: 5,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    color: AppTheme.whiteColor,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20,bottom: 10.0,left: 10,right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                'assets/icons/home.png',
                                scale: 1.2,
                              )),
                          TextFormField(
                            //  controller: _mobileNumberController,
                            keyboardType: TextInputType.phone,
                            style: const TextStyle(
                              fontSize: 14,
                              color: AppTheme.blacKColor,
                              fontWeight: FontWeight.w600,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: const BorderSide(
                                  color: AppTheme.themeColor,
                                  width: 2.0,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: const BorderSide(
                                  color: AppTheme.themeColor,
                                  width: 2.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: AppTheme.themeColor, width: 1.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              hintText: "Phone Number",
                              labelStyle: const TextStyle(
                                  fontFamily: 'SemiBold',
                                color: AppTheme.themeColor
                              ),
                              hintStyle: const TextStyle(
                                fontFamily: 'SemiBold',
                                  color: AppTheme.themeColor
                              ),
                              labelText: 'Phone Number',
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Next',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'SemiBold',
                                    color: AppTheme.whiteColor,
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: AppTheme.themeColor,
                                onPrimary: Colors.white,
                                onSurface: Colors.grey,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
