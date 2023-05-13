import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:market_food/styles/styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    bool isLoading = true;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        flexibleSpace: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: defaultMargin,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign In",
                  style: defaultFontText.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Find your best ever meal",
                  style: defaultFontText.copyWith(),
                )
              ],
            ),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.symmetric(
          vertical: defaultMargin,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(
                  defaultMargin,
                  26,
                  defaultMargin,
                  6,
                ),
                child: Text(
                  "Email Address",
                  style: defaultFontText,
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Type your email address",
                    hintStyle: greyFontText,
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(
                  defaultMargin,
                  26,
                  defaultMargin,
                  6,
                ),
                child: Text(
                  "Password",
                  style: defaultFontText,
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Type your password",
                    hintStyle: greyFontText,
                    border: InputBorder.none,
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  height: 45,
                  margin: const EdgeInsets.only(
                    top: defaultMargin,
                    left: defaultMargin,
                    right: defaultMargin,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Sign In",
                      style: defaultFontText.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  height: 45,
                  margin: const EdgeInsets.only(
                    top: 12,
                    left: defaultMargin,
                    right: defaultMargin,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: greyColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Create New Account",
                      style: defaultFontText.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
