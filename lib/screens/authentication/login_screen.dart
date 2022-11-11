import 'package:cricbuzz/screens/bottom/bottom_navigation.dart';
import 'package:flutter/material.dart';

import '../../Utils/Colors.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BottomNavScreen(intCurIndex: 0)));
          },
          icon: Icon(Icons.arrow_back, color: AppColors.whiteColor,),
        ),
        backgroundColor: AppColors.appSubColor,
        centerTitle: true,
        title: Text( "Account",
          style:TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal),),
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: AppColors.whiteColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  ListTile(
                    title: Text( "Log In / Sign Up",
                      style:TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),),
                    subtitle: Text( "We will send an OTP to your email id",
                      style:TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),),
                  ),
                ],
              ),
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black,
                            width: 0.8
                        )
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                          width: 0.8
                      )
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black,
                            width: 0.8
                        )
                    ),
                    prefixIcon: Icon(Icons.email_outlined, color: Colors.black,),
                    contentPadding: EdgeInsets.all(12),

                    hintText: "Enter Email Id",
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Row(
                  children: [
                    Checkbox(
                      value: true,
                      activeColor: AppColors.appSubColor,
                      onChanged: (val) {
                      },
                    ),
                    RichText(
                      text: TextSpan(
                        text: "I agree with the",
                        style:  TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontFamily: 'Ubuntu'
                        ),
                        children: <TextSpan>[
                          TextSpan(text: ' Terms of Use', style:  TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue,
                              fontFamily: 'Ubuntu'
                          )),
                          TextSpan(text: ' &',  style:  TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontFamily: 'Ubuntu'
                          ),),
                          TextSpan(text: ' Privacy Policy', style:  TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue,
                              fontFamily: 'Ubuntu'
                          )),
                          TextSpan(text: ' of Cricbuzz',  style:  TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontFamily: 'Ubuntu'
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.appSubColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("CONTINUE", style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
