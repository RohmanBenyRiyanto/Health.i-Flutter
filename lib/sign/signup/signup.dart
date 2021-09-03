import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthi/sign/signin/signin.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  get emailController => null;
  get passwordController => null;

  get nameController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding: EdgeInsets.all(0),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(40, 70, 40, 6),
              child: Text(
                'Sign Up',
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
                'Create a new account to use Health.i',
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
              padding: EdgeInsets.only(left: 16, top: 50),
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
                autocorrect: true,
                controller: nameController,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 17, vertical: 17),
                  hintText: 'Input your name',
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
                  hintText: 'Input your Email',
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
                obscureText: true,
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
              padding: EdgeInsets.only(left: 16, top: 1),
              alignment: Alignment.centerLeft,
              child: Row(
                children: <Widget>[
                  Text(
                    'Already have an account?',
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
                      'Sign In',
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
                          builder: (_) => SignInScreen(),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 1),
              height: 51,
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              // ignore: deprecated_member_use
              child: RaisedButton(
                textColor: Colors.white,
                color: Color(0xFF3575FE),
                splashColor: Color(0xFF074BDC),
                child: Text(
                  'Register',
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
                      builder: (_) => SignInScreen(),
                    ),
                  );
                  print(nameController.text);
                  print(emailController.text);
                  print(passwordController.text);
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 50.0, top: 15.0, right: 50.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'By clicking sign up you are agreeing to the Terms of use and the Privacy policy.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFA7AABC),
                      fontSize: 14,
                      fontFamily: 'SFUIText',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
