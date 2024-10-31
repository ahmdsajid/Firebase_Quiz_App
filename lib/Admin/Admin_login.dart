import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_quiz_app/Admin/Add_Quiz.dart';
import 'package:firebase_quiz_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  TextEditingController usernamecontroller = new TextEditingController();
  TextEditingController userpasswordcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFededed),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 2),
              padding: EdgeInsets.only(top: 45.0, left: 20.0, right: 20.0),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 53, 51, 51),
                      Colors.black,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.vertical(
                      top: Radius.elliptical(
                          MediaQuery.of(context).size.width, 110.0.h))),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 60.0),
              child: Form(
                  child: Column(
                children: [
                  Text(
                    "let's Start with Admin",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30.0.h,
                  ),
                  Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(20.0.r),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 2.2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0.r),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50.0,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 20.0, top: 5.0, bottom: 5.0),
                            margin: EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 160, 160, 147)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: TextFormField(
                                controller: usernamecontroller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please Enter Username';
                                  }
                                },
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Username',
                                    hintStyle: TextStyle(
                                        color: Color.fromARGB(
                                            255, 160, 160, 147))),
                                            style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 20.0, top: 5.0, bottom: 5.0),
                            margin: EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 160, 160, 147)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: TextFormField(
                                controller: userpasswordcontroller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please Enter Password';
                                  }
                                },
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Password',
                                    hintStyle: TextStyle(
                                        color: Color.fromARGB(
                                            255, 160, 160, 147))),
                                            style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40.0.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              LoginAdmin();
                            },
                            child: Container(
                              padding: EdgeInsets.all(12.0),
                              margin: EdgeInsets.symmetric(horizontal: 20.0),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Center(
                                child: Text(
                                  "Log in",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }

  LoginAdmin() {
    FirebaseFirestore.instance.collection("Admin").get().then((snapshot) {
      snapshot.docs.forEach((result) {
        if (result.data()['ID'] != usernamecontroller.text.trim()) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
            "Your id is not correct",
            style: TextStyle(fontSize: 18.0),
          )));
        } else if (result.data()['Password'] !=
            userpasswordcontroller.text.trim()) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
            "Your password is not correct",
            style: TextStyle(fontSize: 18.0),
          )));
        } else{
          Route route = MaterialPageRoute(builder: (context)=> AddQuiz());
          Navigator.pushReplacement(context, route);
        }
      });
    });
  }
}

// LoginAdmin() {
//   FirebaseFirestore.instance
//       .collection("Admin")
//       .where('id', isEqualTo: usernamecontroller.text.trim())
//       .where('password', isEqualTo: userpasswordcontroller.text.trim())
//       .get()
//       .then((snapshot) {
//     if (snapshot.docs.isNotEmpty) {
//       // Login successful
//       Route route = MaterialPageRoute(builder: (context) => AddQuiz());
//       Navigator.pushReplacement(context, route);
//     } else {
//       // Show error message
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           content: Text(
//         "Your id or password is not correct",
//         style: TextStyle(fontSize: 18.0),
//       )));
//     }
//   });
// }
// }
