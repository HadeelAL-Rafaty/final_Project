import 'package:flutter/material.dart';
import 'package:path/path.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 26,
              ),
              Text(
                "welcome to WhatsApp",
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 29,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              Image.asset(
                'assets/bg.png',
                color: Colors.greenAccent[700],
                height: 340,
                width: 340,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 7.5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                        children: [
                          TextSpan(
                              text: "Agree and Continue to accept the",
                              style: TextStyle(color: Colors.grey[600])),
                          TextSpan(
                            text:
                                "WhatsApp Terms of service and Privacy Policy",
                            style: TextStyle(
                              color: Colors.cyan,
                            ),
                          ),
                        ])),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 110,
                height: 50,
                child: Center(
                  child: Text("AGREE AND CONTINUE"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
