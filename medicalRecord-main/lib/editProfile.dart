import 'dart:io';

import 'package:flutter/material.dart';
import 'package:medicalrecord/function.dart';

import 'constant/colors.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController =
        TextEditingController(text: 'Basma Mohamed');
    TextEditingController idController =
        TextEditingController(text: '1246495415');
    TextEditingController birthController =
        TextEditingController(text: '1246495415');
    TextEditingController historyController = TextEditingController(
        text:
            'dejrrrrrrrrrrrrrrrrrrrrrrrgfgfbjgbfbjbfjbjbfjdsbvjsbdvjbsdvjcbsjdbcajsbdjbsbvj vjcjfdbjwbsdjbfjzsdjbjfbrjbfewjdbjebwfbc');
  File? images;
    return Directionality(textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: const Text('تعديل الملف الشخصي',style: TextStyle(fontSize: 20),),elevation: 0,backgroundColor: button,leading: IconButton(onPressed: (){Navigator.pop(context);},icon: const Icon(Icons.arrow_back_ios_sharp,color: Colors.white,),),),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.blue[100]!.withOpacity(0.2),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                   Align(
                      alignment: Alignment.center,
                      child: Stack(
                        children:[  CircleAvatar(
                          backgroundImage:images==null?AssetImage('asset/st.png'):Image.file(images).image,
                          radius: 80,
                        ),
                          Positioned(bottom:0,right: 0,child: IconButton(onPressed: (){pickImage().then((value) => images=value);},icon: const Icon(Icons.camera_alt_rounded),))]

                      )),
                  const SizedBox(
                    height: 30,
                  ),
                   Text(
                    'الاسم',
                    style: TextStyle(
                  fontSize: 16,
                        fontWeight: FontWeight.bold,color: text),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.only(
                            top: 0, bottom: 0, left: 10, right: 10),
                        border: OutlineInputBorder(borderSide: BorderSide.none)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   Text(
                    "الرقم القومي",
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: text),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const TextField(
                      enabled: false,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          //hintText: "National ID",
                          contentPadding: EdgeInsets.only(
                              top: 0, bottom: 0, left: 10, right: 10),
                          border: OutlineInputBorder(borderSide: BorderSide.none)

                          )),
                  const SizedBox(
                    height: 10,
                  ),
                   Text(
                    "تاريخ الميلاد",
                    style: TextStyle(fontSize: 16,
                        //  color: color3,
                        fontWeight: FontWeight.bold,color: text),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const TextField(
                      enabled: false,
                      //controller: date,
                      decoration: InputDecoration(
                        fillColor: Colors.white, filled: true,

                        contentPadding: EdgeInsets.only(
                            top: 0, bottom: 0, left: 10, right: 10),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,

                        ),
                                            )),
                  const SizedBox(
                    height: 10,
                  ),
                   Text(
                    "السجلات الطبية",
                    style: TextStyle(fontSize: 16,
                        //  color: color3,
                        fontWeight: FontWeight.bold,color: text),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  //
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: EditableText(
                                              maxLines: null,
                          controller: historyController,
                          focusNode: FocusNode(),
                          style: const TextStyle(fontSize: 12, color: Colors.black),
                          cursorColor: Colors.cyanAccent,
                          backgroundCursorColor: Colors.cyan,
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'حفظ التعديل',
                        style: TextStyle(fontSize: 18),
                      ),style: ElevatedButton.styleFrom(backgroundColor: button),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
