import 'package:flutter/material.dart';
import 'package:medicalrecord/patientDetails.dart';

import 'constant/colors.dart';

class Patients extends StatelessWidget {
  Patients({Key? key}) : super(key: key);
  final List name = ['محمد', "اسماء", "مصطفي", "بسمة", "احمد"];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_sharp),
            ),
          ),
          body: Container(
            color: Colors.blue[100]!.withOpacity(0.2),
            child: ListView.separated(
                itemBuilder: (context, index) => Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PatientDetails()));
                          },
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.white,
                                child: Image.asset(
                                  'asset/profile.png',
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Text(name[index],
                                      style: TextStyle(
                                        fontSize: 16,
                                      )),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '01/04/2023',
                                    style: TextStyle(color: text),
                                  )
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.delete),
                                // style: ElevatedButton.styleFrom(
                                //     minimumSize: Size(40, 23),backgroundColor: button,
                                //     shape: RoundedRectangleBorder(
                                //         borderRadius: BorderRadius.circular(15))),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                separatorBuilder: (context, index) => Divider(),
                itemCount: name.length),
          )),
    );
  }
}
