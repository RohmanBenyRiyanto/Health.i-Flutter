import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthi/home/home.dart';
import 'package:healthi/sign/signup/signup.dart';
import 'package:healthi/theme/app.theme.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  get emailController => null;
  get passwordController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: Padding(
        padding: EdgeInsets.all(0),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(40, 70, 40, 6),
              child: Text(
                'Sign In',
                style: TextStyle(
                  color: Color(0xFF2C3458),
                  fontSize: 32,
                  fontFamily: 'SFUIText',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(40, 6, 40, 0),
              child: Text(
                'Login With Your Acount To Continue',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFA7AABC),
                  fontSize: 16,
                  fontFamily: 'SFUIText',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 16, top: 100),
              child: Text(
                'Email',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF2C3458),
                  fontSize: 16,
                  fontFamily: 'SFUIText',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(16, 10, 16, 0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                autocorrect: true,
                controller: emailController,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 17, vertical: 17),
                  hintText: 'Input your email',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: 'SFUIText',
                    fontWeight: FontWeight.w400,
                  ),
                  filled: true,
                  fillColor: Colors.white70,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Color(0xFFDFDFDF), width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Color(0xFF3575FE),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 16, top: 16),
              child: Text(
                'Password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF2C3458),
                  fontSize: 16,
                  fontFamily: 'SFUIText',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(16, 10, 16, 0),
              child: TextField(
                autocorrect: true,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 17, vertical: 17),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: 'SFUIText',
                    fontWeight: FontWeight.w400,
                  ),
                  filled: true,
                  fillColor: Colors.white70,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Color(0xFFDFDFDF), width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Color(0xFF3575FE),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(1, 0, 0, 0),
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {
                  //forgot password screen
                },
                textColor: Color(0xFF3575FE),
                child: Text(
                  'Forgot Password ?',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'SFUIText',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Container(
              height: 51,
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              // ignore: deprecated_member_use
              child: RaisedButton(
                textColor: Colors.white,
                color: Color(0xFF3575FE),
                splashColor: Color(0xFF074BDC),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'SFUIText',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Home(),
                    ),
                  );
                  print(emailController.text);
                  print(passwordController.text);
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Text(
                    'Does not have account?',
                    style: TextStyle(
                      color: Color(0xFFA7AABC),
                      fontSize: 14,
                      fontFamily: 'SFUIText',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  // ignore: deprecated_member_use
                  FlatButton(
                    textColor: Color(0xFF3575FE),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'SFUIText',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => SignUpScreen(),
                        ),
                      );
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
