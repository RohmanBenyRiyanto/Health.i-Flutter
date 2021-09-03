import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthi/theme/app.theme.dart';

class CategoriesCards extends StatelessWidget {
  final String image;
  final String title;
  const CategoriesCards({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8 ,bottom: 8,right:10, left: 10),
      child: Container(
        height: 79,
        width: 79,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 5),
              blurRadius: 4,
              color: Colors.black12,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(image, height: 28),
            SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 10,
                fontFamily: 'SFUIText',
                fontWeight: FontWeight.w500,
                color: colorDarkBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
