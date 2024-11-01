import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddQuiz extends StatefulWidget {
  const AddQuiz({super.key});

  @override
  State<AddQuiz> createState() => _AddQuizState();
}

class _AddQuizState extends State<AddQuiz> {

  TextEditingController option1controller = new TextEditingController();
  TextEditingController option2controller = new TextEditingController();
  TextEditingController option3controller = new TextEditingController();
  TextEditingController option4controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Quiz", style: TextStyle(color: Colors.black, fontSize: 30.0.sp, fontWeight: FontWeight.bold,),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20.0,right: 20.0, top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Upload The Quiz Picture",style: TextStyle(color: Colors.black, fontSize: 20.sp, fontWeight: FontWeight.w700),),
          SizedBox(height: 20.0.h,),
          Center(child: Material(
            elevation: 4.0,
            borderRadius: BorderRadius.circular(20.0.r),
            child: Container(
              width: 150.w,
              height: 150.h,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.5.w),
                borderRadius: BorderRadius.circular(20.0.r)
              ),
              child: Icon(Icons.camera_alt_outlined, color: Colors.black,),
            ),
          ),),
          SizedBox(height: 20.0.h,),
          Text("Option 1", style: TextStyle(color: Colors.black87, fontSize: 20.0.sp, fontWeight: FontWeight.bold),),
          SizedBox(height: 20.0.h,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFFececf8), borderRadius: BorderRadius.circular(10.r),
            ),
            child: TextField(
              controller: option1controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter Option 1",
                hintStyle: TextStyle(color: Colors.black, fontSize: 18.0.sp, fontWeight: FontWeight.w600),
              ),
              style: TextStyle(color: Colors.black, fontSize: 18.0.sp,fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20.0.h,),
          Text("Option 2", style: TextStyle(color: Colors.black87, fontSize: 20.0.sp, fontWeight: FontWeight.bold),),
          SizedBox(height: 20.0.h,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFFececf8), borderRadius: BorderRadius.circular(10.r),
            ),
            child: TextField(
              controller: option1controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter Option 2",
                hintStyle: TextStyle(color: Colors.black, fontSize: 18.0.sp, fontWeight: FontWeight.w600),
              ),
              style: TextStyle(color: Colors.black, fontSize: 18.0.sp,fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20.0.h,),
          Text("Option 3", style: TextStyle(color: Colors.black87, fontSize: 20.0.sp, fontWeight: FontWeight.bold),),
          SizedBox(height: 20.0.h,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFFececf8), borderRadius: BorderRadius.circular(10.r),
            ),
            child: TextField(
              controller: option1controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter Option 3",
                hintStyle: TextStyle(color: Colors.black, fontSize: 18.0.sp, fontWeight: FontWeight.w600),
              ),
              style: TextStyle(color: Colors.black, fontSize: 18.0.sp,fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20.0.h,),
          Text("Option 4", style: TextStyle(color: Colors.black87, fontSize: 20.0.sp, fontWeight: FontWeight.bold),),
          SizedBox(height: 20.0.h,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFFececf8), borderRadius: BorderRadius.circular(10.r),
            ),
            child: TextField(
              controller: option1controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter Option 4",
                hintStyle: TextStyle(color: Colors.black, fontSize: 18.0.sp, fontWeight: FontWeight.w600),
              ),
              style: TextStyle(color: Colors.black, fontSize: 18.0.sp,fontWeight: FontWeight.bold),
            ),
          ),
        
        ],),),
      ),
    );
  }
}