import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  double getWidth = 0.0;
  bool isShowPassword = true;
  bool isFocusPhone = false;
  bool isFocusMail = false;
  bool isFocusPassword = false;
  final FocusNode _phoneFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _mailFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    _phoneFocusNode.addListener(() {
      if (_phoneFocusNode.hasFocus) {
        setState(() {
          isFocusPhone = _phoneFocusNode.hasFocus;
        });
      } else {
        setState(() {
          isFocusPhone = false;
        });
      }
    });

    _mailFocusNode.addListener(() {
      if (_mailFocusNode.hasFocus) {
        isFocusMail = _mailFocusNode.hasFocus;
      } else {
        isFocusMail = false;
      }
    });

    _passwordFocusNode.addListener(() {
      if (_passwordFocusNode.hasFocus) {
        isFocusPassword = _passwordFocusNode.hasFocus;
      } else {
        isFocusPassword = false;
      }
    });
  }

  @override
  void dispose() {
    _phoneFocusNode.dispose();
    _mailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    getWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Text(
                  "Let's Get Started",
                  style: TextStyle(
                      fontSize: 22,
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "jQuery was particularly popular when JavaScript was less standardized across browsers.  ",
                  style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  child: CupertinoTextField(
                    placeholder: "Phone number",
                    keyboardType: TextInputType.number,
                    focusNode: _phoneFocusNode,
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 10),
                    style: TextStyle(
                        fontSize: 18, color: Theme.of(context).primaryColor),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: isFocusPhone
                                ? Theme.of(context).primaryColor
                                : Colors.grey.shade500)),
                    prefix: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Icon(Icons.phone,
                          color: isFocusPhone
                              ? Theme.of(context).primaryColor
                              : Colors.grey.shade500),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: CupertinoTextField(
                    placeholder: "Email",
                    keyboardType: TextInputType.emailAddress,
                    focusNode: _mailFocusNode,
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 10),
                    style: TextStyle(
                        fontSize: 18, color: Theme.of(context).primaryColor),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: isFocusMail
                                ? Theme.of(context).primaryColor
                                : Colors.grey.shade500)),
                    prefix: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Icon(Icons.mail,
                          color: isFocusMail
                              ? Theme.of(context).primaryColor
                              : Colors.grey.shade500),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: CupertinoTextField(
                      placeholder: "Password",
                      obscureText: isShowPassword,
                      keyboardType: TextInputType.text,
                      focusNode: _passwordFocusNode,
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 10),
                      style: TextStyle(
                          fontSize: 18, color: Theme.of(context).primaryColor),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: isFocusPassword
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey.shade500)),
                      prefix: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Icon(Icons.lock_rounded,
                            color: isFocusPassword
                                ? Theme.of(context).primaryColor
                                : Colors.grey.shade500),
                      ),
                      suffix: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isShowPassword = !isShowPassword;
                            });
                          },
                          child: Icon(Icons.remove_red_eye_outlined,
                              color: Colors.grey.shade500),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: getWidth,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Sign in with other",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: getWidth,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade500),
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: CachedNetworkImage(
                          imageUrl:
                              "https://i.pinimg.com/236x/c8/b8/12/c8b8129127bada9fa699aeba388b3b2b.jpg",
                          fit: BoxFit.contain,
                          width: 30,
                        ),
                      ),
                      SizedBox(
                        width: getWidth * .17,
                      ),
                      const Text(
                        "Sign In with Google",
                        style: TextStyle(
                            color: Color.fromARGB(255, 104, 94, 94),
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: getWidth,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade500),
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CachedNetworkImage(
                          imageUrl:
                              "https://i.pinimg.com/236x/a8/b0/e6/a8b0e6fac04c43e040a8eb6bfd74b100.jpg",
                          fit: BoxFit.contain,
                          width: 30,
                        ),
                      ),
                      SizedBox(
                        width: getWidth * .18,
                      ),
                      const Text(
                        "Sign In with Apple",
                        style: TextStyle(
                            color: Color.fromARGB(255, 104, 94, 94),
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Do you have any account ?",
                        style:
                            TextStyle(color: Color.fromARGB(255, 104, 94, 94)),
                      ),
                      Text(
                        " Sign In",
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
