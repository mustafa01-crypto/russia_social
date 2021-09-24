import 'package:flutter/material.dart';
import 'package:russia_social/components/search_box.dart';
import 'package:russia_social/components/top_row_icons.dart';
import 'package:russia_social/widgets/constants.dart';
import 'package:sizer/sizer.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController t1 = TextEditingController();
  final key = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldBack,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  topRow(context, "Followers", 22.w),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Form(
                key: key,
                child: Container(
                  height: 6.89.h,
                  width: 94.66.w,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    //border: Border.all(color: Colors.black26),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextFormField(
                    controller: t1,
                    autofocus: false,
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.search, color: Colors.black),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.black54),
                      border: InputBorder.none,
                    ),
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    onChanged: (val) {
                      setState(() {
                        TextSelection previousSelection = t1.selection;
                        t1.text = val;
                        t1.selection = previousSelection;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              searchBox("assets/badboy.jpg"),
              searchBox("assets/angel.jpg"),
              searchBox("assets/brad.jpg"),
              searchBox("assets/rocky.jpg"),
              searchBox("assets/uygun.png")
            ],
          ),
        ),
      ),
    );
  }
}
