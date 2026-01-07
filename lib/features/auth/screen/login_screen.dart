import 'package:care_agent/common/custom_button.dart';
import 'package:care_agent/features/auth/screen/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widget/custom_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  SvgPicture.asset(
                    'assets/log.svg',
                    height: 50,
                    width: 50,
                  ),

                  const SizedBox(height: 20),
                  Center(child: Text("Password Reset Successfully!",style: TextStyle(fontSize: 24),)),

                  const SizedBox(height: 20),
                  Center(child: Text("Your password has been successfully reset. You \n       can now log in with your new password.",style: TextStyle(fontSize: 14),)),
                  
                  SizedBox(height: 30),
                  CustomButton(text: "Log in", onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SigninScreen()),
                    );
                  })
                ]
            )
        ),
    );
  }
}
