import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthi/cotum_icon/myicon.dart';
import 'package:healthi/home/categories_card.dart';
import 'package:healthi/theme/app.theme.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 8),
        child: ListView(physics: ClampingScrollPhysics(), children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 16, top: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    print('nav_bar');
                  },
                  child: SvgPicture.asset(
                    'images/svg/ic_nav_bar.svg',
                    height: 20,
                    width: 24,
                  ),
                ),
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    image: DecorationImage(
                      image: AssetImage('images/profile_me.png'),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 16, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Hello,',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'SFUIText',
                          fontWeight: FontWeight.w600,
                          color: colorDarkBlue,
                        ),
                      ),
                      Text(
                        'Rohman Beny' + '!',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'SFUIText',
                          fontWeight: FontWeight.w700,
                          color: colorDarkBlue,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // ignore: deprecated_member_use
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Location',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'SFUIText',
                                fontWeight: FontWeight.w600,
                                color: colorDarkBlue,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 3, right: 16),
                              child: Icon(
                                Icons.location_on,
                                color: colorBlue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, top: 4.0, right: 16),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 17, vertical: 17),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontFamily: 'SFUIText',
                    fontWeight: FontWeight.w600,
                    color: colorTitle,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: colorTitle,
                  ),
                  filled: true,
                  fillColor: colorGreyTwo,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(color: colorGrey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                      color: colorBorder,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0, top: 24.0, right: 16.0),
            child: Container(
              height: 190,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: colorBlue,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(0.0, 5.0),
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: Expanded(
                flex: 1,
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(left: 14.0, top: 14.0),
                                child: Expanded(
                                  flex: 1,
                                  child: Text(
                                    'Patient registration\nand select\nhospital',
                                    style: TextStyle(
                                        color: colorWhite,
                                        fontSize: 20,
                                        fontFamily: 'SFUIText',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1.0,
                                        height: 1.5),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: EdgeInsets.only(bottom: 14),
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(left: 14.0, top: 14),
                                height: 28.0,
                                // ignore: deprecated_member_use
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60.0),
                                  ),
                                  onPressed: () {},
                                  padding: EdgeInsets.all(1.0),
                                  color: colorWhite,
                                  textColor: colorBlue,
                                  child: Text(
                                    "Regist",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'SFUIText',
                                      fontWeight: FontWeight.w500,
                                      color: colorBlue,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Container(
                            alignment: Alignment.bottomRight,
                            child: SvgPicture.asset(
                              'images/svg/home_illustration.svg',
                              height: 160,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Text(
              'Categories',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: colorDarkBlue,
                fontSize: 18,
                fontFamily: 'SFUIText',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  CategoriesCards(
                    image: "images/svg/ic_hospital.svg",
                    title: "Hospital",
                  ),
                  CategoriesCards(
                    image: "images/svg/ic_doctor.svg",
                    title: "Doctor",
                  ),
                  CategoriesCards(
                    image: "images/svg/ic_ambulance.svg",
                    title: "Ambulance",
                  ),
                  CategoriesCards(
                    image: "images/svg/ic_medicines.svg",
                    title: "Medicines",
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 16),
                alignment: Alignment.topLeft,
                child: Text(
                  'Top Doctor',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: colorDarkBlue,
                    fontSize: 18,
                    fontFamily: 'SFUIText',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 16),
                child: Text(
                  'See All',
                  style: TextStyle(
                    color: colorBlue,
                    fontSize: 12,
                    fontFamily: 'SFUIText',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: colorWhite,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 5.0),
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, top: 12, bottom: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 85,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(1.0, 4),
                                    blurRadius: 5.0,
                                  ),
                                ],
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [colorWhite, colorGrey],
                                )),
                            child: Image.asset(
                              'images/dr_satu.png',
                              height: 85,
                              width: 70,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(left: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child: Text(
                                      'Dr. Emi Sulistya, SpKJ',
                                      style: TextStyle(
                                        color: colorDarkBlue,
                                        fontSize: 16,
                                        fontFamily: 'SFUIText',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    child: Text(
                                      'Psychiatrist, Surakarta',
                                      style: TextStyle(
                                        color: colorSubtitle,
                                        fontSize: 14,
                                        fontFamily: 'SFUIText',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(right: 8),
                                          child: SvgPicture.asset(
                                            'images/svg/ic_date.svg',
                                            height: 14,
                                            width: 14,
                                          ),
                                        ),
                                        Positioned(
                                          child: Text(
                                            '10.00 AM - 2.00 PM',
                                            style: TextStyle(
                                              color: colorSubtitle,
                                              fontSize: 14,
                                              fontFamily: 'SFUIText',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: colorWhite,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 5.0),
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, top: 12, bottom: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 85,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(1.0, 4),
                                    blurRadius: 5.0,
                                  ),
                                ],
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [colorWhite, colorGrey],
                                )),
                            child: Image.asset(
                              'images/dr_dua.png',
                              height: 85,
                              width: 70,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(left: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child: Text(
                                      'Dr. Setiawan Kromo D Sp.JP',
                                      style: TextStyle(
                                        color: colorDarkBlue,
                                        fontSize: 16,
                                        fontFamily: 'SFUIText',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    child: Text(
                                      'Heart Surgeon, Medan',
                                      style: TextStyle(
                                        color: colorSubtitle,
                                        fontSize: 14,
                                        fontFamily: 'SFUIText',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(right: 8),
                                          child: SvgPicture.asset(
                                            'images/svg/ic_date.svg',
                                            height: 14,
                                            width: 14,
                                          ),
                                        ),
                                        Positioned(
                                          child: Text(
                                            '10.00 AM - 2.00 PM',
                                            style: TextStyle(
                                              color: colorSubtitle,
                                              fontSize: 14,
                                              fontFamily: 'SFUIText',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavyBar(
        animationDuration: Duration(microseconds: 8000),
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            activeColor: colorBlue,
            inactiveColor: colorDarkBlue,
          ),
          BottomNavyBarItem(
            icon: Icon(MyFlutterApp.user),
            title: Text("Doctor"),
            activeColor: colorBlue,
            inactiveColor: colorDarkBlue,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.date_range_rounded),
            title: Text("Appointment"),
            activeColor: colorBlue,
            inactiveColor: colorDarkBlue,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text("Message"),
            activeColor: colorBlue,
            inactiveColor: colorDarkBlue,
          ),
        ],
      ),
    );
  }
}
