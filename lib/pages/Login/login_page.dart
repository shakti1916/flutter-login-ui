import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginui/const.dart';
import 'package:flutter_svg/flutter_svg.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
       body:  Container(
        height: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            
            colors: [g1,g2]
          ),
        ),
        child: SingleChildScrollView(child: Padding(
          padding:  EdgeInsets.all(size.height*0.030),
          child: Column(children: [
            Image.asset(image1),
            Text(
              "Welcome Back!",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: kWhiteColor.withOpacity(0.7),
              ),
            ),
             Text(
              "Please, Login in!",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 34,
                color: kWhiteColor.withOpacity(0.7),
              ),
            ),
            SizedBox(height: size.height * 0.024),
           TextField(
            keyboardType: TextInputType.text,
            style: const TextStyle(
              color: kInputColor
            ),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 25.0),
                filled: true,
                hintText: "Email",
                prefixIcon:const Icon(Icons.person),
                fillColor: kWhiteColor,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(37),
                )
              ),
            ),
             SizedBox(height: size.height * 0.015,)
,
             TextField(
              obscureText: true,
            keyboardType: TextInputType.text,
            style: const TextStyle(
              color: kInputColor
            ),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 25.0),
                filled: true,
                hintText: "Password",
                prefixIcon:const Icon(Icons.lock),
                fillColor: kWhiteColor,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(37),
                )
              ),
            ),
            SizedBox(height: size.height* 0.020,),
            CupertinoButton(
              padding: EdgeInsets.zero,
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
              
              height: size.height * 0.080,
              decoration: BoxDecoration(color: kButtonColor,
            borderRadius: BorderRadius.circular(37)
            ),
            child: const Text(
              "Login",
              style: TextStyle(
                color: kWhiteColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            ),
            
             onPressed: (){}),

             SizedBox(
              height: size.height * 0.040,
             ),

             const Text("Or",
             style: TextStyle(
              color: kWhiteColor,
              fontWeight: FontWeight.w700,
             ),
             
             ),

SizedBox(height: size.height * 0.030,),
              CupertinoButton(
              padding: EdgeInsets.zero,
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
              
              height: size.height * 0.080,
              decoration: BoxDecoration(
              boxShadow: const [BoxShadow(blurRadius: 45,
              spreadRadius: 0,
              color: Color.fromRGBO(120, 37, 130, 0.25),
              ) ,
              ],
              color:const Color.fromRGBO(225,225, 225, 0.28),
            borderRadius: BorderRadius.circular(37)
            ),
            child: const Text(
              "Register",
              style: TextStyle(
                color: kWhiteColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            ),
            
             onPressed: (){}),
             

          ],),
        )),
         

      ),
    );
  }
}