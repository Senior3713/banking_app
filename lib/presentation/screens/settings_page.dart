import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: MediaQuery.sizeOf(context).height * .08,
        title: const Text(
          "SETTINGS",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(
            MediaQuery.sizeOf(context).height * .025,
          ),
          child: Column(
            children: [
              ListTile(
                onTap: (){},
                leading: Image(
                  image: AssetImage("assets/images/privacy_policy.png"),
                  width: MediaQuery.sizeOf(context).height * .03,
                  height: MediaQuery.sizeOf(context).height * .03,
                ),
                title: Text(
                  "Privacy Policy",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF171B34),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * .03),
              ListTile(
                onTap: (){},
                leading: Image(
                  image: AssetImage("assets/images/terms_of_use.png"),
                  width: MediaQuery.sizeOf(context).height * .03,
                  height: MediaQuery.sizeOf(context).height * .03,
                ),
                title: Text(
                  "Terms of Use",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF171B34),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * .03),
              ListTile(
                onTap: (){},
                leading: Image(
                  image: AssetImage("assets/images/info.png"),
                  width: MediaQuery.sizeOf(context).height * .03,
                  height: MediaQuery.sizeOf(context).height * .03,
                ),
                title: Text(
                  "Subscription info",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF171B34),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * .03),
              ListTile(
                onTap: (){},
                leading: Image(
                  image: AssetImage("assets/images/rate_app.png"),
                  width: MediaQuery.sizeOf(context).height * .03,
                  height: MediaQuery.sizeOf(context).height * .03,
                ),
                title: Text(
                  "Rate App",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF171B34),
                    fontWeight: FontWeight.w500,
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

