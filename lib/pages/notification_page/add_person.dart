import 'package:flutter/material.dart';
import 'package:russia_social/components/add_person_box.dart';
import 'package:russia_social/components/app_logo.dart';
import 'package:russia_social/components/gradient_button.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:russia_social/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

import 'add_account.dart';

class AddPerson extends StatefulWidget {
  const AddPerson({Key? key}) : super(key: key);

  @override
  _AddPersonState createState() => _AddPersonState();
}

class _AddPersonState extends State<AddPerson> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldBack,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 16.04.h,
                color: buttonColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 6.6.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: buttonLeft,
                            size: 21.sp,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        appLogo(),
                        IconButton(
                          icon: Icon(
                            Icons.person_add_alt_1_rounded,
                            color: buttonLeft,
                            size: 21.sp,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Text(
                  "Track accounts",
                  style: titleStyle,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.w, right: 4.w),
                child: Text(
                  "Add information about person and we "
                  "will inform you if  a story about him"
                  " appears on our website",
                  style: addTrackAccountStyle,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddAccount()));
                  },
                    child: gradientLoginButton("Add Person", 92.w, 7.39.h)),
              ),
              SizedBox(
                height: 3.h,
              ),
              addPersonBox("01", "Mustafa yıldız", "Türkiye Ankara"),
              SizedBox(
                height: 2.h,
              ),
              addPersonBox("02", "Ali Koç", "Azerbaycan Bakü"),
              SizedBox(
                height: 2.h,
              ),
              addPersonBox("03", "Ayşe Teyze", "Danimarka Kopenhag"),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
