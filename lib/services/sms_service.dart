import 'package:flutter_sms_inbox/flutter_sms_inbox.dart';
import 'package:get/get.dart';


SmsQuery query = SmsQuery();

class SmsService extends GetxController{

  List<SmsMessage> _messages = [];
  List<SmsMessage> get messages => _messages;
  

  SmsService(){
    getMessages();
  }

  void getMessages() async{
    _messages = await query.getAllSms;
  }


}