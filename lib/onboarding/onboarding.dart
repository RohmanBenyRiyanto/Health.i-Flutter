import 'package:flutter/material.dart';
import 'package:healthi/onboarding/content.dart';
import 'package:healthi/sign/signin/signin.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(
                  () {
                    currentIndex = index;
                  },
                );
              },
              itemBuilder: (_, i) {
                return Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 40, left: 24, right: 24),
                    child: Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsets.only(top: 50, left: 24, right: 24),
                              child: Container(
                                child: Image.asset(
                                  contents[i].image,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            contents[i].title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF2C3458),
                              fontSize: 24,
                              fontFamily: 'SFUIText',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            contents[i].discription,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'SFUIText',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFA7AABC),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                  (index) => buildDot(index, context),
                ),
              ),
            ),
          ),
          Container(
            height: 51,
            margin: EdgeInsets.fromLTRB(16, 30, 16, 24),
            width: double.infinity,
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                if (currentIndex == contents.length - 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SignInScreen(),
                    ),
                  );
                }
                _controller.nextPage(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.bounceIn);
              },
              color: Color(0xFF3575FE),
              splashColor: Color(0xFF074BDC),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                currentIndex == contents.length - 1 ? "Sign In" : "Continue",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'SFUIText',
                  fontWeight: FontWeight.w400,
                ),
              ),
              textColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 8,
      width: currentIndex == index ? 20 : 8,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF3575FE),
      ),
    );
  }
}
