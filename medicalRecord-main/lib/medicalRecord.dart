import 'package:flutter/material.dart';

import 'constant/colors.dart';

class MedicalRecord extends StatelessWidget {
  const MedicalRecord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController bTController = TextEditingController(text: "37");
    TextEditingController heartController = TextEditingController(text: "85");
    TextEditingController aTController = TextEditingController(text: "20");
    TextEditingController humController = TextEditingController(text: "76");
    TextEditingController aQController = TextEditingController(text: "29.1");
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'السجلات الطبية',
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
          ),
        ),
        body: Container(
          color: Colors.blue[100]!.withOpacity(0.2),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 50),
                    child: Text(
                      'القراءات المسجلة...',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextField(
                    enabled: false,
                    controller: bTController,
                    decoration: InputDecoration(
                        prefixText: 'درجة حرارة الجسم : ',
                        prefixStyle: TextStyle(fontSize: 18, color: text),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.only(
                            top: 0, bottom: 0, left: 10, right: 10),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    enabled: false,
                    controller: heartController,
                    decoration: InputDecoration(
                        prefixText: 'نبض القلب : ',
                        prefixStyle: TextStyle(fontSize: 18, color: text),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.only(
                            top: 0, bottom: 0, left: 10, right: 10),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    enabled: false,
                    controller: aTController,
                    decoration: InputDecoration(
                        prefixText: 'درجة حرارة الجو : ',
                        prefixStyle: TextStyle(fontSize: 18, color: text),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.only(
                            top: 0, bottom: 0, left: 10, right: 10),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    enabled: false,
                    controller: humController,
                    decoration: InputDecoration(
                        prefixText: 'رطوبة الجو : ',
                        prefixStyle: TextStyle(fontSize: 18, color: text),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.only(
                            top: 0, bottom: 0, left: 10, right: 10),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    enabled: false,
                    controller: aQController,
                    decoration: InputDecoration(
                        prefixText: 'جودة الهواء : ',
                        prefixStyle: TextStyle(fontSize: 18, color: text),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.only(
                            top: 0, bottom: 0, left: 10, right: 10),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none)),
                  ),
                  Text(
                    'التقارير المسجلة',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
              Table(
          border: const TableBorder(top: BorderSide(color: Colors.white, width: 2),bottom: BorderSide(color: Colors.white, width: 2),right: BorderSide(color: Colors.white, width: 2),left: BorderSide(color: Colors.white, width: 2)
          //     verticalInside:  BorderSide(color: Colors.white, width: 2),
      , horizontalInside:
       BorderSide(color: Colors.white, width: 2)
          ),
        columnWidths: const {
          0: IntrinsicColumnWidth(flex: 1),
          1: IntrinsicColumnWidth(flex: 0.5),
          2: IntrinsicColumnWidth(),
        },
        children: [
          TableRow(children: [
            Center(
              child: Text(
               "الروشتة",
                style:
                TextStyle(fontSize: 16),
              ),
            ),
            Center(
              child: Text(
                "تاريخ االرفع",
                style:
                TextStyle(fontSize: 16),
              ),
            ),
            Center(
              child: Text(
              "عمليات",
                style:
                TextStyle(fontSize: 16),
              ),
            ),
          ]),
          // TableRow(children: [
          //   Center(
          //     child:Image.network('https://mir-s3-cdn-cf.behance.net/projects/404/eec957107476749.Y3JvcCwyNTQwLDE5ODcsMjMyLDA.jpg'),
          //
          //     ),
          //
          //   Center(
          //     child: Text(
          //       "10/5/2023",
          //       style:
          //       TextStyle(fontSize: 16),
          //     ),
          //   ),
          //   Center(
          //     child: ElevatedButton(onPressed: (){},child: Text('حذف'),)
          //   ),
          // ])
                ],
              ),])
            ),
          ),
        ),
      ),
    );
  }
}
