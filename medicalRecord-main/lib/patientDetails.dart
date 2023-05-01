import 'package:flutter/material.dart';
import 'package:medicalrecord/constant/colors.dart';

class PatientDetails extends StatelessWidget {
   PatientDetails({Key? key}) : super(key: key);
  TextEditingController historyController = TextEditingController(text: 'ملاحظات'
      );

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                color: button,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 30),
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                              onPressed: () {Navigator.pop(context);},
                              icon: const Icon(
                                Icons.arrow_back_ios_sharp,
                                color: Colors.white,
                              ))),
                    ),
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: backGround,
                      child: const CircleAvatar(
                        radius: 57,
                        backgroundImage: AssetImage("asset/st.png"),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'اسم المريض',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Container(child: SingleChildScrollView(
                  child: Column(children: [ Padding(
                    padding: const EdgeInsets.only(top: 30,right: 10,left: 10),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(4)),
                          child:
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: EditableText(
                              maxLines: null,
                              controller: historyController,
                              focusNode: FocusNode(),
                              style: const TextStyle(fontSize: 14, color: Colors.black),
                              cursorColor: Colors.cyanAccent,
                              backgroundCursorColor: Colors.cyan,
                            ),
                          )),                        Positioned(left: 0,bottom:0,child: ElevatedButton(onPressed: (){},child: Center(child: Icon(Icons.send,color: Colors.white,)),style: ElevatedButton.styleFrom(minimumSize: Size(50, 30),shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)))),
                      ],
                    ),
                  ),],),
                ),
                    height: MediaQuery.of(context).size.height,
                    decoration:  BoxDecoration(
                      //color: Colors.blue[100]!.withOpacity(0.9),
                        color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20)),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
