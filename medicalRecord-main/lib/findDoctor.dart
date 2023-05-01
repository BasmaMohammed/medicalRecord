import 'package:flutter/material.dart';
import 'package:medicalrecord/function.dart';

import 'constant/colors.dart';

class FindDoctor extends StatefulWidget {
  const FindDoctor({Key? key}) : super(key: key);

  @override
  State<FindDoctor> createState() => _FindDoctorState();
}

class _FindDoctorState extends State<FindDoctor> {
TextEditingController date=TextEditingController();
List name=['بسمة','محمد','تقي','نورهان'];
List images=['asset/doc.jpg','asset/doc3.jpg','asset/doc1.jpg','asset/doc2.jpg'];

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: const Text('الاطباء',style: TextStyle(fontSize: 20),),
          elevation: 0,
          backgroundColor: button,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.blue[100]!.withOpacity(0.2),
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.only(top: 30, right: 15, left: 15),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          color: button,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.only(
                            top: 0, bottom: 0, left: 10, right: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height - 163,
                      child: ListView.builder(
                          itemCount: name.length,
                          itemBuilder: (context, index) => Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                           Image(
                                            image: AssetImage('${images[index]}'),
                                            height: 100,
                                            width: 130,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text('د.${name[index]}',
                                                  style: TextStyle(
                                                      fontSize: 16, color: text)),
                                              const Text('التخصص',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.grey))
                                            ],
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Form(
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: SizedBox(
                                                height: 40,
                                                child: TextFormField(controller: date,
                                                    decoration: InputDecoration(
                                                        hintText: 'تحديد التاريخ',
                                                        suffixIcon:IconButton(onPressed: ()async{pickDate(context).then((value) =>setState(() {
        date.text = value;
      }) );},icon:  Icon(Icons
                                                            .calendar_month_outlined,color: button,),),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        contentPadding:
                                                            const EdgeInsets.only(
                                                                top: 0,
                                                                bottom: 0,
                                                                right: 10),
                                                        enabledBorder: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(20),
                                                            borderSide: BorderSide(
                                                                color: button,
                                                                width: 2)),
                                                        focusedBorder: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(20),
                                                            borderSide:
                                                                BorderSide(
                                                                    color: button,
                                                                    width: 2)))),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: SizedBox(
                                                height: 40,
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      hintText: 'تحديد الساعة',
                                                      suffixIcon: const Icon(
                                                          Icons.arrow_drop_down),
                                                      filled: true,
                                                      fillColor: Colors.white,
                                                      contentPadding:
                                                          const EdgeInsets.only(
                                                              top: 0,
                                                              bottom: 0,
                                                              right: 10),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                              borderSide: BorderSide(
                                                                  color: button,
                                                                  width: 2)),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                              borderSide:
                                                                  BorderSide(
                                                                      color:
                                                                          button,
                                                                      width: 2))),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'حجز',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: button,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            minimumSize: Size(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2,
                                                40)),
                                      )
                                    ],
                                  ),
                                ),
                              )))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
