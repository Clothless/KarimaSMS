
/*
1- add custtom_conversation (just a message inside container with border radius)
2- start working with permissions
 */


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karima_sms/custom/custom_message.dart';
import 'package:karima_sms/services/sms_service.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}


class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetBuilder<SmsService>(
          init: SmsService(),
          builder: (controller) => ListView.builder(
              itemBuilder: (context, index){
                return CustomMessage(
                  sender: controller.messages[index].sender!,
                  message: controller.messages[index].body!,
                  time: controller.messages[index].date!.day.toString(),
                );
              },
              itemCount: controller.messages.length,
              ),
          
        ),
      ),
    );
  }
}