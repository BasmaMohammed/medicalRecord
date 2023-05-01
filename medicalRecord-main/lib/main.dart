import 'package:flutter/material.dart';
import 'package:medicalrecord/doctorHome.dart';
import 'package:medicalrecord/editProfile.dart';
import 'package:medicalrecord/findDoctor.dart';
import 'package:medicalrecord/patientDetails.dart';
import 'package:medicalrecord/patients.dart';
import 'package:medicalrecord/profile.dart';
import 'package:medicalrecord/register.dart';

import 'reports.dart';
import 'login.dart';
import 'mainHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

        //  primarySwatch: Colors.white,
        ),
        home: Login()

    );
  }
}

