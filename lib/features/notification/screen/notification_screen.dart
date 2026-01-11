import 'package:care_agent/features/notification/widget/custom_minibutton.dart';
import 'package:care_agent/features/notification/widget/custom_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFFFFAF7),
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title:  Text(
          "Notifications",
          style: TextStyle(
            color: Color(0xffE0712D),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 10),
          child: Column(
            children: [
              SizedBox(height: 20),
              CustomNotification(
                onTap: (){
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                            color: Color(0xFFFFF0E6),
                            width: 3,
                          ),
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                             Center(
                               child: SvgPicture.asset(
                                'assets/light.svg',
                                height: 100,
                                width: 100,
                               ),
                             ),
                            SizedBox(height: 10),
                            Center(
                              child: Text("Did you get your \nCBC test Done?",style: TextStyle(
                                color: Color(0xffE0712D),
                                fontSize: 25,
                              ),
                              ),
                            ),
                          ],
                        ),
                        actions: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomMinibutton(
                                text: 'Yes',
                                textcolor: Colors.white ,
                                onTap: () {
                                  print('Now pressed');
                                  Navigator.of(context).pop();
                                },
                                backgroundColor: const Color(0xFFE0712D),
                              ),
                              SizedBox(width: 7),
                              CustomMinibutton(
                                text: 'No',
                                textcolor: Color(0xffE0712D) ,
                                onTap: () {
                                  print('Later pressed');
                                  Navigator.of(context).pop();
                                },
                                backgroundColor: Color(0xffFFFAF7),
                              ),
                            ],
                          ),
                        ],
                      ),
                  );
                },
                title: 'Medical test alert!',
                message: 'You need to check your sugar level! ',
                time: '4:46 PM', iconPath: 'assets/light.svg',),
              SizedBox(height: 15),
              const Divider(
                color: Color(0xffFFF0E6),
                thickness: 2,
                height: 1,
              ),

              SizedBox(height: 20),
              CustomNotification(
                onTap: (){
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                          color: Color(0xFFFFF0E6),
                          width: 3,
                        ),
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Center(
                            child: SvgPicture.asset(
                              'assets/not.svg',
                              height: 100,
                              width: 100,
                            ),
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Text("You need to refill \nBisocor Tablet 2.5mg",style: TextStyle(
                              color: Color(0xffE0712D),
                              fontSize: 25,
                            ),
                            ),
                          ),
                        ],
                      ),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomMinibutton(
                              text: 'Refill',
                              textcolor: Colors.white ,
                              onTap: () {
                                print('Now pressed');
                                Navigator.of(context).pop();
                              },
                              backgroundColor: const Color(0xFFE0712D),
                            ),
                            SizedBox(width: 7),
                            CustomMinibutton(
                              text: 'Decline',
                              textcolor: Color(0xffE0712D) ,
                              onTap: () {
                                print('Later pressed');
                                Navigator.of(context).pop();
                              },
                              backgroundColor: Color(0xffFFFAF7),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                title: 'Medical test alert!',
                message: 'You need to check your sugar level! ',
                time: '4:46 PM', iconPath: 'assets/not.svg',),
              SizedBox(height: 15),
              const Divider(
                color: Color(0xffFFF0E6),
                thickness: 2,
                height: 1,
              ),

              SizedBox(height: 20),
              CustomNotification(
                onTap: (){
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                          color: Color(0xFFFFF0E6),
                          width: 3,
                        ),
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Center(
                            child: SvgPicture.asset(
                              'assets/time.svg',
                              height: 100,
                              width: 100,
                            ),
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Text("It’s time to take Bisocor \nTablet 2.5mg [1 tablet]. \nDid you take it?",style: TextStyle(
                              color: Color(0xffE0712D),
                              fontSize: 25,
                            ),
                            ),
                          ),
                        ],
                      ),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomMinibutton(
                              text: 'Yes',
                              textcolor: Colors.white ,
                              onTap: () {
                                print('Now pressed');
                                Navigator.of(context).pop();
                              },
                              backgroundColor: const Color(0xFFE0712D),
                            ),
                            SizedBox(width: 7),
                            CustomMinibutton(
                              text: 'No',
                              textcolor: Color(0xffE0712D) ,
                              onTap: () {
                                print('Later pressed');
                                Navigator.of(context).pop();
                              },
                              backgroundColor: Color(0xffFFFAF7),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                title: 'Medical test alert!',
                message: 'You need to check your sugar level! ',
                time: '09/05/25', iconPath: 'assets/time.svg',),
              SizedBox(height: 15),
              const Divider(
                color: Color(0xffFFF0E6),
                thickness: 2,
                height: 1,
              ),

              SizedBox(height: 20),
              CustomNotification(
                title: 'Medical test alert!',
                message: 'You need to check your sugar level! ',
                time: 'yesterday', iconPath: 'assets/cap.svg',),
              SizedBox(height: 15),
              const Divider(
                color: Color(0xffFFF0E6),
                thickness: 2,
                height: 1,
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
