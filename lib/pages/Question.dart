//import 'package:firebase_quiz_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF004840),
      body: Container(
        
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.0, left: 20.0),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: Color(0xFFf35b32),
                        borderRadius: BorderRadius.circular(60.r)),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 100.0.w,
                  ),
                  Text(
                    'Sports',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0.sp,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            20.verticalSpace,
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r))),
                child: Column(
                  children: [
                    Padding(
                        padding:
                            EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.r),
                          child: Image.asset(
                            'images/messi3.jpg',
                            //height: 250.h,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                        )),
                        SizedBox(height: 20.0.h,),
                    Container(
                      width: MediaQuery.of(context).size.width/1.1,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFF818181), width: 2.0.w),
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Text(
                        'Lionel Messi',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(height: 20.0.h,),
                    Container(
                      width: MediaQuery.of(context).size.width/1.1,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFF818181), width: 2.0.w),
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Text(
                        'Cristiano Ronaldo',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(height: 20.0.h,),
                    Container(
                      width: MediaQuery.of(context).size.width/1.1,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFF818181), width: 2.0.w),
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Text(
                        'Neymar',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(height: 20.0.h,),
                    Container(
                      width: MediaQuery.of(context).size.width/1.1,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFF818181), width: 2.0.w),
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Text(
                        'Pablo Gavi',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
