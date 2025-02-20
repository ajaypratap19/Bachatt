import 'package:bachatt/screens/screens.dart';
import 'package:flutter/material.dart';

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

    return SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20),
                //OTP Column
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Back arrow
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Material(
                        child: InkWell(
                          child: Icon(
                            Icons.arrow_circle_left_outlined,
                            size: 50,
                          ),
                          onTap: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const UserVerification()));
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "Please enter OTP",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'We have sent it to:',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text(
                            '+91 ${widget.mobileNumber}',
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Material(
                              child: InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.edit_outlined,
                                    size: 18,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    //OTP
                    Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Pinput(
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
                        )),
                  ],
                ),
              ),
              //Other end
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'By proceeding, I agree to bachatt\'s T&C and\nPrivacy Policy',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
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
                        padding: EdgeInsets.only(bottom: 70, top: 20),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.zero))),
                    icon: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Verify OTP",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 24),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          size: 30,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
