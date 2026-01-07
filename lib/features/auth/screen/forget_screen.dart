import 'package:care_agent/common/custom_button.dart';
import 'package:care_agent/features/auth/screen/verify_screen.dart';
import 'package:care_agent/features/auth/widget/custom_field.dart';
import 'package:flutter/material.dart';

import '../widget/custom_screen.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFF0E6),
        body: CustomScreen(
            svgPath: 'assets/logo.svg',
            svgHeight: 180,
            svgWidth: 130,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Center(child: Text("Forgot password?",style: TextStyle(fontSize: 24),)),

                  SizedBox(height: 13),
                  Center(child: Text("Enter your email and we will send you a verification \n                      "
                      "                   code",style: TextStyle(fontSize: 14),)),
                  SizedBox(height: 60),
                  CustomField(hintText: "Email",),
                  
                  SizedBox(height: 20),
                  CustomButton(text: "Send Code", onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const VerifyScreen()),
                    );
                  })

                ]
            )
        )
    );
  }
}
