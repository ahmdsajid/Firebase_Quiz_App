import 'dart:io';
import 'package:firebase_quiz_app/Service/Database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';

class AddQuiz extends StatefulWidget {
  const AddQuiz({super.key});

  @override
  State<AddQuiz> createState() => _AddQuizState();
}

class _AddQuizState extends State<AddQuiz> {
  final ImagePicker _picker = ImagePicker();
  File? selectedImage;

//   Future getImage()async{
//     var image = await _picker.pickImage(source: ImageSource.gallery);

//     selectedImage = File(image!.path);
//     setState(() {

//     });
//   }

  uploadItem() async {
    if (imageUrlcontroller.text != "" &&
        option1controller.text != "" &&
        option2controller.text != "" &&
        option3controller.text != "" &&
        option4controller.text != "") {
      String addId = randomAlphaNumeric(10);

      // Reference firebaseStorageRef = FirebaseStorage.instance.ref().child("blogImage").child(addId);
      Map<String, dynamic> AddQuiz = {
        "imgae": imageUrlcontroller.text,
        "option1": option1controller.text,
        "option2": option2controller.text,
        "option3": option3controller.text,
        "option4": option4controller.text,
        "correctAnswer": correctcontroller.text,
        "category": value,
      };

      await Database().AddQuiz(AddQuiz, value!).then((value) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "Successfully Added",
              style: TextStyle(fontSize: 18.0),
            )));
      });
    }
  }

  String? value;
  final List<String> quizitem = [
    'Animal',
    'Sports',
    'Random',
    'Fruits',
    'Objects',
    'Place'
  ];

  TextEditingController option1controller = new TextEditingController();
  TextEditingController option2controller = new TextEditingController();
  TextEditingController option3controller = new TextEditingController();
  TextEditingController option4controller = new TextEditingController();
  TextEditingController correctcontroller = new TextEditingController();
  TextEditingController imageUrlcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Quiz",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.0.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin:
              EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Upload The Quiz Picture",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFececf8),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: TextField(
                  controller: imageUrlcontroller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Image URL",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              // selectedImage==null? GestureDetector(
              //   onTap: () {
              //     getImage();
              //   },
              //   child: Center(
              //     child: Material(
              //       elevation: 4.0,
              //       borderRadius: BorderRadius.circular(20.0.r),
              //       child: Container(
              //         width: 150.w,
              //         height: 150.h,
              //         decoration: BoxDecoration(
              //             border: Border.all(color: Colors.black, width: 1.5.w),
              //             borderRadius: BorderRadius.circular(20.0.r)),
              //         child: Icon(
              //           Icons.camera_alt_outlined,
              //           color: Colors.black,
              //         ),
              //       ),
              //     ),
              //   ),
              // ):Center(
              //     child: Material(
              //       elevation: 4.0,
              //       borderRadius: BorderRadius.circular(20.0.r),
              //       child: Container(
              //         width: 150.w,
              //         height: 150.h,
              //         decoration: BoxDecoration(
              //             border: Border.all(color: Colors.black, width: 1.5.w),
              //             borderRadius: BorderRadius.circular(20.0.r)),
              //         child: Image.file(
              //           selectedImage!,
              //           fit: BoxFit.cover,
              //         ),
              //       ),
              //     ),
              //   ),
              SizedBox(
                height: 20.0.h,
              ),
              Text(
                "Option 1",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20.0.sp,
                  // fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFececf8),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: TextField(
                  controller: option1controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Option 1",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Text(
                "Option 2",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20.0.sp,
                  //fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFececf8),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: TextField(
                  controller: option2controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Option 2",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Text(
                "Option 3",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20.0.sp,
                  //fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFececf8),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: TextField(
                  controller: option3controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Option 3",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Text(
                "Option 4",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20.0.sp,
                  //fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFececf8),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: TextField(
                  controller: option4controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Option 4",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Text(
                "Correct Answer",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20.0.sp,
                  //fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFececf8),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: TextField(
                  controller: correctcontroller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Correct Answer",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFececf8),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                  items: quizitem
                      .map((item) => DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )))
                      .toList(),
                  onChanged: ((value) => setState(() {
                        this.value = value;
                      })),
                  dropdownColor: Colors.white,
                  hint: Text(
                    "Select Category",
                    style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20.0.sp),
                  ),
                  iconSize: 36,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  value: value,
                )),
              ),
              SizedBox(
                height: 30.0.h,
              ),
              Center(
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(10.0),
                  child: GestureDetector(
                    onTap: () {
                      uploadItem();
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      width: 150.w,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          "Add",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
