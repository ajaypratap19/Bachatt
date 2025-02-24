import 'package:bachatt/screens/screens.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class UserVerification extends StatefulWidget {
  const UserVerification({super.key});

  @override
  State<UserVerification> createState() => _UserVerificationState();
}

class _UserVerificationState extends State<UserVerification> {
  bool? _onPressedBox = false;
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Snackbar
    var snackBar = SnackBar(
      content: Text(_onPressedBox == true && _controller.value.text.length == 10
          ? ''
          : _onPressedBox == false && _controller.value.text.length != 10
              ? 'Please enter correct mobile number and accept T&C'
              : _onPressedBox == false && _controller.value.text.length == 10
                  ? 'Please accept T&C'
                  : 'Please enter correct mobile number'),
      action: SnackBarAction(
        label: 'Ok',
        onPressed: () {},
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      //Main Column
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 34, top: 60),
            //Upper Coulmn
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  t.verificationOneHeading,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                    color: AppColor.baseGrey800,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  t.verificationOneSubHeading,
                  style: TextStyle(
                      fontSize: 18,
                      color: AppColor.baseGrey500,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 20,
                ),
                //Text Input
                SizedBox(
                  height: 51,
                  child: Padding(
                    padding: EdgeInsets.only(right: 34),
                    child: TextField(
                      controller: _controller,
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                          counterText: '',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          filled: true,
                          fillColor: AppColor.lightGray,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          hintText: t.mobileNumber,
                          hintStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: AppColor.charcoal,
                          ),
                          prefixIcon: Container(
                            margin: EdgeInsets.only(
                                top: 7.0, bottom: 7.0, right: 16.0),
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  width: 1.0,
                                  color: AppColor.suvaGrey,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 9.0,
                                  right: 11.0,
                                  top: 6.0,
                                  bottom: 6.0),
                              child: Text(
                                '+91',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: AppColor.charcoal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          )),
                      maxLength: 10,
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColor.charcoal,
                        fontWeight: FontWeight.w400,
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Lower Column
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: SizedBox(
                      width: 23,
                      height: 23,
                      child: Checkbox(
                        fillColor: WidgetStateProperty.resolveWith((states) {
                          if (states.contains(WidgetState.selected)) {
                            return AppColor.appBackgroundColor;
                          }
                          if (!states.contains(WidgetState.disabled)) {
                            return AppColor.lightGray;
                          }
                          return null;
                        }),
                        splashRadius: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                        ),
                        // activeColor: AppColor.appBackgroundColor,
                        side: BorderSide(
                          color: Colors.transparent,
                          width: 0,
                        ),
                        value: _onPressedBox,
                        onChanged: (newValue) {
                          setState(() {
                            _onPressedBox = newValue;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                          color: AppColor.baseGrey500,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                      children: [
                        TextSpan(text: 'I allow\u{00A0}'),
                        TextSpan(
                          text: 'bachatt',
                          style: TextStyle(
                              color: AppColor.appBackgroundColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                        TextSpan(
                            text:
                                '\u{00A0}to fetch my credit card report from\n'),
                        TextSpan(
                            text: 'Experian to advice me on best financial\n'),
                        TextSpan(text: 'products. I agree to\u{00A0}'),
                        TextSpan(
                          text: 'Experian T&C',
                          style: TextStyle(
                              color: AppColor.appBackgroundColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              //Btn
              IconButton(
                onPressed: () {
                  _onPressedBox == true && _controller.value.text.length == 10
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OtpVerification(
                                    mobileNumber: _controller.value.text,
                                  )))
                      : ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                style: IconButton.styleFrom(
                    backgroundColor: AppColor.appBackgroundColor,
                    padding: EdgeInsets.only(bottom: 70, top: 20),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero))),
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Verify Mobile Number\u{00A0}",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 24),
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      size: 32,
                      color: Colors.white,
                    ),
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
