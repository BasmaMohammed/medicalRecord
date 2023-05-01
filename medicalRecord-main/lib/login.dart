import 'package:flutter/material.dart';
import 'package:medicalrecord/doctorHome.dart';
import 'package:medicalrecord/mainHome.dart';

import 'constant/colors.dart';
import 'register.dart';

class Login extends StatelessWidget {
   Login({Key? key}) : super(key: key);
  TextEditingController nameCon=TextEditingController();

  @override
  Widget build(BuildContext context) {


    return Directionality(textDirection: TextDirection.rtl,
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Container(width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(top: 40,bottom: 10),
                child: Image.asset('asset/medical.png'),),
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                color: backGround,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'تسجيل الدخول',
              style: TextStyle(fontSize: 24, color: text),
            ),
            const SizedBox(
              height: 50,
            ),
            Form(
                child: Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 3, left: 10),
                    child: Text(
                      'الاسم',
                      style:
                          TextStyle(color: text, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextFormField(controller: nameCon,
                    decoration: InputDecoration(
                      hintText: 'الاسم',
                      contentPadding:
                          EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 10),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: button, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: button, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 3, left: 10),
                    child: Text(
                      "الرقم القومي",
                      style:
                          TextStyle(color: text, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                          hintText: 'الرقم القومي',
                          contentPadding: const EdgeInsets.only(
                              top: 0, bottom: 0, left: 10, right: 10),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: button, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: button, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(10))),
                      style: const TextStyle(
                        fontSize: 16,
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {nameCon.value.text==''?
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MainHome())):       Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DoctorHome()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: button,
                        textStyle: const TextStyle(fontSize: 18),
                        minimumSize: Size(MediaQuery.of(context).size.width, 45),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: const Text('تسجيل الدخول'),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ليس لديك حساب؟'),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: Text('سجل الان'))
              ],
            )
          ],
        ),
      )),
    );
    ;
  }
}
