import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nova/widget/textstyle.dart';
import 'package:nova/utils/size_cofig.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}
late TapGestureRecognizer _tapGestureRecognizer;

class _signupState extends State<signup> {
  void initState() {
    // TODO: implement initState
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap=navigaterto;

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tapGestureRecognizer.dispose();
  }
  void navigaterto ()=>Navigator.pushReplacementNamed(context, '/loginscreen');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsetsDirectional.only(
            top: SizeConfig.scaleHeight(75),
        start: SizeConfig.scaleWidth(25),



      ),
        child:   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: (){

              Navigator.pushReplacementNamed(context, '/loginscreen');
            }, icon: Icon(Icons.arrow_back)



            ),
            SizedBox(
              height: SizeConfig.scaleHeight(30),
            ),
            textstyle(text: "Hello There", color:Color(0x3d3e3e3e),fontSize: 16,fontWeight: FontWeight.w500,),

            textstyle(text: "Create Your Account", color: Colors.black,),
            SizedBox(
              height: SizeConfig.scaleHeight(30),
            ),
            Container(
              margin: EdgeInsets.only(right:  SizeConfig.scaleWidth(25), ),
              child: TextField(

                decoration: InputDecoration(
                  fillColor: Colors.white,

                  filled: true,
                  hintText: "Full Name",
                  hintStyle: TextStyle(
                      color: Colors.grey.shade500
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.white,



                      )

                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.scaleHeight(20),
            ),

            Container(
              margin: EdgeInsets.only(right:  SizeConfig.scaleWidth(25), ),
              child: TextField(
                keyboardType: TextInputType.  emailAddress,

                decoration: InputDecoration(
                  fillColor: Colors.white,

                  filled: true,
                  hintText: "Email address",
                  hintStyle: TextStyle(
                      color: Colors.grey.shade500
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.white,



                      )

                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.scaleHeight(20),
            ),

            Container(
              margin: EdgeInsets.only(right:  SizeConfig.scaleWidth(25), ),
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
obscureText: true,
                decoration: InputDecoration(

                    fillColor: Colors.white,

                    filled: true,
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Colors.grey.shade500
                    ),
                    enabledBorder: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.white,



                      ),


                    ),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Color(0XFFCACACA),)
                ),

              ),
            ),
            Spacer(),
            Container(
                width: double.infinity,
                height: 63.83,
                margin: EdgeInsets.only(right:  SizeConfig.scaleWidth(25),left:  SizeConfig.scaleWidth(25),),
                child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                        backgroundColor:  Color(0xffFF7750),
                        shape:  RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        )
                    ) ,

                    onPressed: (){}, child: textstyle(text: "Continue", color: Colors.white,fontSize: 16,))),
            SizedBox(
              height: SizeConfig.scaleHeight(20),
            ),
            Center(
              child:   RichText(

                textAlign: TextAlign.center,

                text: TextSpan(

                    text: "You have an account? Please ",style: TextStyle(

                    color: Colors.black) ,children:

                [

                  TextSpan(
                      recognizer: _tapGestureRecognizer,
                      text: "Sign In",style: TextStyle(

                      color: Color(0xffFF7750)

                  )),



                ]

                ),





              ),
            ),

            SizedBox(
              height: SizeConfig.scaleHeight(20),
            ),
          ],

        ),
      ),

    );
  }
}
