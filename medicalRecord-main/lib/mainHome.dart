import 'package:flutter/material.dart';
import 'package:medicalrecord/reports.dart';
import 'package:medicalrecord/findDoctor.dart';
import 'package:medicalrecord/medicalRecord.dart';
import 'package:medicalrecord/profile.dart';

import 'constant/colors.dart';


class MainHome extends StatelessWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: const Text('الصفحة الرئيسية'),backgroundColor: button,automaticallyImplyLeading: false,   actions:[ IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.logout_outlined,
            color: Colors.white,
          ),
        ),]),
        body: Padding(
          padding: const EdgeInsets.only(right: 20,left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                      child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Profile()));},
                        child: Card(elevation: 10,
                    shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                 //   color: Colors.amber,
                    child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Image.asset('asset/profile.png',height: 140,),const SizedBox(height:8 ,),
                             Text('الملف الشخصي', style: TextStyle(fontSize: 18,color: text))
                          ],
                        ),
                    ),
                  ),
                      )),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: InkWell(onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>const FindDoctor()));},
                      child: Card(elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      //  color: Colors.blueAccent,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Image.asset('asset/search3.png',height: 140,),const SizedBox(height:8 ,),
                               Text('البحث عن طبيب',
                                  style: TextStyle(fontSize: 18,color: text))
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                      child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const MedicalRecord()));},
                        child: Card(elevation: 10,
                    shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                  //  color: Colors.amber,
                    child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Image.asset('asset/patient.png',height: 140,),const SizedBox(height:8 ,),
                             Text('السجلات الطبية',
                                style: TextStyle(fontSize: 18,color: text))
                          ],
                        ),
                    ),
                  ),
                      )),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Reports()));},
                      child: Card(elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                       // color: Colors.blueAccent,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Image.asset('asset/report1.png',height: 140,),const SizedBox(height:8 ,),
                               Text(
                                'التقارير الطبية',
                                style: TextStyle(fontSize: 18,color: text),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
