//import 'package:firebase_quiz_app/main.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_quiz_app/Service/Database.dart';
import 'package:firebase_quiz_app/pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Question extends StatefulWidget {
  String category;
  Question({required this.category});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
bool show = false;

getontheload() async{
QuizStream = await Database().getCategoryQuiz(widget.category);
setState(() {
  
});
}
@override
void initState() {
  super.initState();
  getontheload();
}


  Stream? QuizStream;
  PageController controller = PageController();

Widget AllQuiz(){
  return StreamBuilder(
    stream: QuizStream, 
    builder: (context, AsyncSnapshot Snapshot){
      return Snapshot.hasData? PageView.builder(
        controller: controller,
        itemCount: Snapshot.data.docs.length,
        itemBuilder: (context, index){
          DocumentSnapshot ds= Snapshot.data.docs[index];
          return Expanded(
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
                          child: Image.network(
                            ds["imgae"],
                            //height: 250.h,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                        )),
                        SizedBox(height: 20.0.h,),
                    GestureDetector(
                      onTap: () {
                        show=true;
                        setState(() {
                          
                        });
                      },
                      child: show? Container(
                        width: MediaQuery.of(context).size.width/1.1,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: ds["correctAnswer"]==ds["option1"]? Colors.green:Colors.red, width: 2.0.w),
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Text(
                          ds["option1"],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ):Container(
                        width: MediaQuery.of(context).size.width/1.1,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xFF818181), width: 2.0.w),
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Text(
                          ds["option1"],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0.h,),
                    GestureDetector(
                      onTap: () {
                        show=true;
                        setState(() {
                          
                        });
                      },
                      child: show? Container(
                        width: MediaQuery.of(context).size.width/1.1,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: ds["correctAnswer"]==ds["option2"]? Colors.green:Colors.red, width: 2.0.w),
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Text(
                          ds["option2"],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ):Container(
                        width: MediaQuery.of(context).size.width/1.1,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xFF818181), width: 2.0.w),
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Text(
                          ds["option2"],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0.h,),
                    GestureDetector(
                      onTap: () {
                        show=true;
                        setState(() {
                          
                        });
                      },
                      child: show? Container(
                        width: MediaQuery.of(context).size.width/1.1,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: ds["correctAnswer"]==ds["option3"]? Colors.green:Colors.red, width: 2.0.w),
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Text(
                          ds["option3"],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ):Container(
                        width: MediaQuery.of(context).size.width/1.1,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xFF818181), width: 2.0.w),
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Text(
                          ds["option3"],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0.h,),
                    GestureDetector(
                      onTap: () {
                        show=true;
                        setState(() {
                          
                        });
                      },
                      child: show? Container(
                        width: MediaQuery.of(context).size.width/1.1,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: ds["correctAnswer"]==ds["option4"]? Colors.green:Colors.red, width: 2.0.w),
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Text(
                          ds["option4"],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ):Container(
                        width: MediaQuery.of(context).size.width/1.1,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xFF818181), width: 2.0.w),
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Text(
                          ds["option4"],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0.h,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          show = false;
                        });

                        controller.nextPage(duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0,top: 10.0),
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(60)
                            ),
                            child: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xFF004840),),
                          ),
                        )
                      ],),
                    )
                  ],
                ),
              ),
            );
      }):Container();
    }
  );
}

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
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHome()));
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: Color(0xFFf35b32),
                          borderRadius: BorderRadius.circular(60.r)),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100.0.w,
                  ),
                  Text(
                    widget.category,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0.sp,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            20.verticalSpace,
            Expanded(child: AllQuiz()),
            
          ],
        ),
      ),
    );
  }
}
