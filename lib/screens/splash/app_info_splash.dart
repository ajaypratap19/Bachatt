import 'package:bachatt/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppInfoSplash extends StatefulWidget {
  const AppInfoSplash({super.key});

  @override
  State<AppInfoSplash> createState() => _AppInfoSplashState();
}

class AppInfoObject {
  String image;
  String heading;
  String subHeading;
  String btnName;

  AppInfoObject(this.image, this.heading, this.subHeading, this.btnName);
}

List<AppInfoObject> screenData = [
  AppInfoObject(Images.splashAnimation1, t.AppInfoSplashOneHeading,
      t.AppInfoSplashOneSubHeading, t.kContinue),
  AppInfoObject(Images.splashAnimation2, t.AppInfoSplashTwoHeading,
      t.AppInfoSplashTwoSubHeading, t.kContinue),
  AppInfoObject(Images.splashAnimation3, t.AppInfoSplashThirdHeading,
      t.AppInfoSplashThreeSubHeading, t.startSaving)
];

late List<Widget> pages;

//Screen Placeholder
Column screenDataPlaceholder(BuildContext context, AppInfoObject data) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(top: 34, left: 20),
        child: SvgPicture.asset(
          data.image,
          // height: imgHeight,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 34),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            3,
            (index) => Container(
              width: 20,
              height: 12,
              color: AppColor.appBackgroundColor,
              child: CircleAvatar(
                radius: 1,
                backgroundColor: Colors.black,
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 58, left: 20),
        child: Text(
          data.heading,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 32,
              color: AppColor.baseGrey800),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 20, top: 10),
        child: Text(
          data.subHeading,
          style: TextStyle(
              fontFamily: 'Rubik',
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: AppColor.baseGrey500),
        ),
      ),
      Expanded(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: IconButton(
            style: IconButton.styleFrom(
              backgroundColor: AppColor.appBackgroundColor,
              padding: EdgeInsets.only(top: 20.5, bottom: 74.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero),
              ),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UserVerification()));
            },
            icon: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  data.btnName,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                const Icon(
                  Icons.arrow_forward,
                  size: 32,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

class _AppInfoSplashState extends State<AppInfoSplash> {
  @override
  void initState() {
    super.initState();
    pages = List.generate(screenData.length,
        (index) => screenDataPlaceholder(context, screenData[index]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: PageView.builder(
        itemCount: screenData.length,
        itemBuilder: (context, index) {
          return pages[index];
        },
      ),
    );
  }
}
