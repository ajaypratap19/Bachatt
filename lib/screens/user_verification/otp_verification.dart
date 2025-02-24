import 'package:bachatt/screens/screens.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OtpVerification extends StatefulWidget {
  final String mobileNumber;
  const OtpVerification({super.key, required this.mobileNumber});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //Default Pin
    final defaultPinTheme = PinTheme(
      width: 40,
      height: 50,
      textStyle: TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFFD3D3D3)),
    );

    //Focused Pin
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
        border: Border.all(color: Color(0xFF3a0ea3)),
        borderRadius: BorderRadius.circular(15),
        color: Colors.white);

    //Submitted Pin
    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromARGB(255, 236, 232, 247),
      ),
    );

    //Snackbar for OTP completion
    var completionSnackbar = SnackBar(
      content: Text('Please enter correct OTP'),
      action: SnackBarAction(
        label: 'Ok',
        onPressed: () {},
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leadingWidth: 70,
        // Back arrow
        leading: IconButton(
          padding: EdgeInsets.only(left: 23, top: 10),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => const UserVerification(),
              ),
            );
          },
          icon: SvgPicture.asset(Images.backBtn),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 32, top: 33),
            //OTP Column
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  t.enterOtp,
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: AppColor.baseGrey800),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  t.sent,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: AppColor.baseGrey500),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '+91 ${widget.mobileNumber}',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: AppColor.baseGrey500),
                    ),
                    IconButton(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset(Images.pencil),
                    ),
                  ],
                ),
                SizedBox(
                  height: 61,
                ),
                //OTP
                Pinput(
                  length: 6,
                  autofocus: true,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: focusedPinTheme,
                  submittedPinTheme: submittedPinTheme,
                  obscureText: true,
                  onChanged: (value) {},
                  onSubmitted: (value) {},
                  onCompleted: (value) {},
                  controller: _controller,
                ),
              ],
            ),
          ),
          //Other end
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 34),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: AppColor.baseGrey500,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    children: [
                      TextSpan(text: 'By Proceeding, I agree to\u{00A0}'),
                      TextSpan(
                        text: 'bachatt\'s T&C',
                        style: TextStyle(
                            color: AppColor.appBackgroundColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      TextSpan(text: '\u{00A0}and\n'),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          color: AppColor.appBackgroundColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              //Btn
              IconButton(
                onPressed: () {
                  _controller.value.text.length == 6
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Transactions()))
                      : ScaffoldMessenger.of(context)
                          .showSnackBar(completionSnackbar);
                },
                style: IconButton.styleFrom(
                    backgroundColor: Color(0xFF3a0ea3),
                    padding: EdgeInsets.only(bottom: 74, top: 20),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero))),
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Verify OTP",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      width: 6.5,
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      size: 25,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
