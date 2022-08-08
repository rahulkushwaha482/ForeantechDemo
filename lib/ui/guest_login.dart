import 'package:flutter/material.dart';
import 'package:forentech_assignment/core/constant/app_theme.dart';

class GuestLogin extends StatefulWidget {
  const GuestLogin({Key? key}) : super(key: key);

  @override
  _GuestLoginState createState() => _GuestLoginState();
}

class _GuestLoginState extends State<GuestLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: AppTheme.themeColor,
        onPressed: () {},
        label: const Text(
          'Proceed to payment',
          style: TextStyle(fontFamily: 'Bold', fontSize: 16),
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppTheme.themeColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  color: AppTheme.whiteColor,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 10.0, left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Basic Detail',
                          style: TextStyle(
                              fontFamily: 'SemiBold',
                              fontSize: 16,
                              color: AppTheme.textColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          //  controller: _nameController,
                          keyboardType: TextInputType.text,
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
                            hintText: "Name",
                            labelStyle: const TextStyle(
                                fontFamily: 'SemiBold',
                                color: AppTheme.textColor),
                            hintStyle: const TextStyle(
                                fontFamily: 'SemiBold',
                                color: AppTheme.textColor),
                            labelText: 'Name',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
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
                            hintText: "Contact Number",
                            labelStyle: const TextStyle(
                                fontFamily: 'SemiBold',
                                color: AppTheme.textColor),
                            hintStyle: const TextStyle(
                                fontFamily: 'SemiBold',
                                color: AppTheme.textColor),
                            labelText: 'Contact Number',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          //  controller: _mobileNumberController,
                          keyboardType: TextInputType.emailAddress,
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
                            hintText: "Email",
                            labelStyle: const TextStyle(
                                fontFamily: 'SemiBold',
                                color: AppTheme.textColor),
                            hintStyle: const TextStyle(
                                fontFamily: 'SemiBold',
                                color: AppTheme.textColor),
                            labelText: 'Email',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Proof Of identity',
                          style: TextStyle(
                              fontFamily: 'SemiBold',
                              fontSize: 16,
                              color: AppTheme.textColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: AppTheme.themeColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.drive_folder_upload,
                                color: AppTheme.whiteColor,
                              ),
                              Text(
                                'Upload',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'SemiBold',
                                    color: AppTheme.whiteColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              _widgetReference(),

            ],
          ),
        ),
      ),
    );
  }

  Widget _widgetReference(){
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 5,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          color: AppTheme.whiteColor,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 20, bottom: 10.0, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Room Preference Details',
                  style: TextStyle(
                      fontFamily: 'SemiBold',
                      fontSize: 18,
                      color: AppTheme.textColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Room Number',
                  style: TextStyle(
                      fontFamily: 'SemiBold',
                      fontSize: 16,
                      color: AppTheme.textColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Move in Date',
                  style: TextStyle(
                      fontFamily: 'SemiBold',
                      fontSize: 16,
                      color: AppTheme.textColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Booked Through',
                  style: TextStyle(
                      fontFamily: 'SemiBold',
                      fontSize: 16,
                      color: AppTheme.textColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
