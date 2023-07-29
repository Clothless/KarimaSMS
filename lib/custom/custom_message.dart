import 'package:flutter/material.dart';
import 'package:karima_sms/custom/custom_text.dart';

class CustomMessage extends StatelessWidget{
  final String asset;
  final String sender;
  final String message;
  final String time;
  final String unseenMessages;

  const CustomMessage({
    this.asset = "assets/images/download.png",
    this.sender = "Karima",
    this.message = "Bla bla bla, while bla bla bla Bla bla bla, while bla bla bla",
    this.time = "00:00",
    this.unseenMessages = "1",
  });
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width * 0.90,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(
            style: BorderStyle.solid
          )
        ),
        child: Row(
          children: [
            //The sender avatar
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(asset)),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            
            //Name of sender and message
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //The one who sends the message
                  CustomText(
                    text: sender,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                      
                  //Message content
                  Container(
                    width: MediaQuery.of(context).size.width * 0.90 - 120,
                    child: CustomText(
                      text: message,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
        
        
            //Time and (seen or not)
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
              children: [
                //Time the message arrived
                CustomText(
                  text: time,
                  color: Colors.black54,
                ),
        
                //How many unseen messages
                Container(
                  height: 20,
                  width: 12,
                  decoration: BoxDecoration(
                    color: Colors.red[400],
                  ),
                  child: CustomText(
                    text: unseenMessages,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


}