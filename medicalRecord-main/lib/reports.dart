import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'constant/colors.dart';
import 'function.dart';

class Reports extends StatelessWidget {
  Reports({Key? key}) : super(key: key);
  TextEditingController imageController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
              'التقارير الطبية',
              style: TextStyle(fontSize: 20),
            ),
            backgroundColor: button,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.white,
              ),
            )
        ),
        body:  Container(
            color: Colors.blue[100]!.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: SingleChildScrollView(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 1.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(
                              "الروشتات",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height / 1.72,
                              child: GridView.builder(
                                  itemCount: 10,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          mainAxisSpacing: 3,
                                          crossAxisSpacing: 2,
                                          ),
                                  itemBuilder: (context, index) => Container(child:
                                    Column(children: [
                                      Container(
                                       color: Colors.white,height: 140,
                                      ),
                                      RichText(
                                          text: const TextSpan(children: [
                                        TextSpan(
                                            text: 'التاريخ : ',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black)),
                                        TextSpan(
                                            text: '12/03/2023',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.grey))])
                                      )])



                      ),
                    )),
                    const SizedBox(
                      height: 10,
                    ),
//




        ]
                      )), const Text(
                      'التحاليل الطبية',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),

              Form(
                              child: TextFormField(
                                controller: imageController,
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    contentPadding: const EdgeInsets.only(
                                        top: 0, bottom: 0, left: 10, right: 10),
                                    suffixIcon: IconButton(
                                      onPressed: () async{
                                       await pickImage().then((value) => imageController=value);
                                      },
                                      icon: const Icon(Icons.attach_file),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: button,
                                            style: BorderStyle.solid),
                                        borderRadius: BorderRadius.circular(10)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: button,
                                            style: BorderStyle.solid),
                                        borderRadius: BorderRadius.circular(10))),
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
SizedBox(height: 5,),

              Align(
                                alignment: Alignment.center,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(
                                            MediaQuery.of(context).size.width / 2,
                                            45),
                                        backgroundColor: button,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    child: const Text('ارسال',
                                        style: TextStyle(fontSize: 16))))

                  ]),
              )))),

    );
  }


}
