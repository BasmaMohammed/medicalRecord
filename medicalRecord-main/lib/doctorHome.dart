import 'package:flutter/material.dart';
import 'package:medicalrecord/constant/colors.dart';
import 'package:medicalrecord/patientDetails.dart';
import 'package:medicalrecord/patients.dart';


class DoctorHome extends StatefulWidget {
  const DoctorHome({Key? key}) : super(key: key);

  @override
  State<DoctorHome> createState() => _DoctorHomeState();
}

class _DoctorHomeState extends State<DoctorHome> {
  int selected = 0;
List date=['06/Jun','07/Jun','08/Jun','09/Jun','10/Jun','11/Jun'];
  List name=['محمد','مصطفي','ابراهيم','احمد','اسماء','لمياء'];
  List hour=['10:30:AM','11:00:AM','11:30:AM','12:00:AM','01:30:PM','02:00:PM'];
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: button,
          elevation: 0,
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(),
          ),
          title: const Text('د/ بسمة محمد'),
          centerTitle: false,
          actions: [
            Stack(
              children: [
                IconButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Patients()));},
                  icon:  Icon(Icons.notifications,size: 30,),
                ),
                const Positioned(
                    top: 10,
                    right: 10,
                    child: CircleAvatar(
                      radius: 6,
                      child: Text(
                        '12',
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      ),
                      backgroundColor: Colors.deepOrange,
                    ))
              ],
            )
          ],
        ),
        body: Container(
          color: button,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: SingleChildScrollView(
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: SizedBox(
                                height: 30,
                                child: ListView.separated(
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(
                                    width: 10,
                                  ),
                                  itemCount: date.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => ChoiceChip(
                                      labelStyle:
                                          const TextStyle(color: Colors.white),
                                      label:  Text(date[index]),
                                      selected: selected == index,
                                      selectedColor: button,

                                      onSelected: (isSelect) {
                                        setState(() {
                                          selected = isSelect ? index : 0;
                                        });
                                      }),
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'الفحص التالي',
                            style:
                                TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 152,
                              child: ListView.separated(
                                  separatorBuilder: (context, index) => SizedBox(
                                        width: 10,
                                      ),
                                  itemCount: name.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) =>
                                                         InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PatientDetails()));},
                                                           child: Container(
                                        child: Stack(children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.blue[100]!
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Padding(
                                              padding: EdgeInsets.all(10),
                                              child: Column(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 30,
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    name[index],
                                                    style: TextStyle(fontSize: 14),
                                                  ),

                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              bottom: 0,
                                              right: 0,
                                              left: 0,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight: Radius.circular(15),
                                                    bottomLeft: Radius.circular(15)),
                                                child: Container(
                                                  child: Center(
                                                      child: Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 5, bottom: 5),
                                                    child: Text(
                                                      hour[index],
                                                      style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 16),
                                                    ),
                                                  )),
                                                  color: button,
                                                ),
                                              ))
                                        ]),
                                      ),
                                                         ))),
                          const SizedBox(
                            height: 30,
                          ),

                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[100]!.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child:
                                InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Patients()));},
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 40,
                                        backgroundColor: Colors.white,
                                        child: Image.asset(
                                          'asset/multiple-users.png',
                                          height: 50,
                                          width: 50,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('المرضي',
                                          style: TextStyle(
                                            fontSize: 16,
                                          )),Spacer(),


                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                              ],
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
