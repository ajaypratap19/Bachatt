import 'package:bachatt/screens/screens.dart';
import 'package:flutter/material.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const UserVerification()));
    });
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.appBackgroundColor,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset(Images.appLogoPng),
            // SvgPicture.asset(
            //   'assets/images/bachatt_logo.svg',
            // ),
            SizedBox(
              height: 30,
            ),
            Text(
              t.appPunchLine,
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            )
          ],
        ),
      ),
    );
  }
}
