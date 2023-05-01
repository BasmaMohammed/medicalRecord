import 'dart:io';

import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

Future pickDate(BuildContext context) async {
  var listDate = await showCalendarDatePicker2Dialog(
    context: context,
    config: CalendarDatePicker2WithActionButtonsConfig(),
    dialogSize: const Size(325, 400),
    initialValue: [DateTime.now()],
    borderRadius: BorderRadius.circular(10),
  );

  var textDate = (listDate!.isNotEmpty ? listDate[0] : null)
      .toString()
      .replaceAll('00:00:00.000', '');
  print('t${textDate}');

  return textDate;
}
Future pickImage() async {
  XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
  File file = File(image!.path);
  print('file$file');
  return file;

}