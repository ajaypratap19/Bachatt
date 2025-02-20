import 'package:bachatt/screens/screens.dart';
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
      ),
      backgroundColor: Colors.white,
      //Main Column
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 34, top: 20),
            //Upper Coulmn
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  t.verificationOneHeading,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  t.verificationOneSubHeading,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 34),
                  child: TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                      counterText: '',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      hintText: t.mobileNumber,
                      prefixText: "+91 ",
                      prefixStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    maxLength: 10,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
          ),
          //Lower Column
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Checkbox(
                      splashRadius: 0,
                      activeColor: AppColor.appBackgroundColor,
                      value: _onPressedBox,
                      onChanged: (newValue) {
                        setState(() {
                          _onPressedBox = newValue;
                        });
                      },
                    ),
                  ),
                  Text(
                    'I allow bachatt to fetch my credit report from\nExperian to advice me on best financial\nproducts. I agree to Experian T&C ',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  )
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
                      "Verify Mobile Number ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24),
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      size: 35,
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

  // prefixIcon: SizedBox(
 //     height: 1, child: VerticalDivider(color: Colors.black)),
