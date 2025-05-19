import 'package:flutter/material.dart';
import 'package:user_profile_example/widget/textfield_widget.dart';
import 'package:user_profile_example/widget/profile_menu.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  String email = '';
  String password = '';
  String display_name = '';
  String first_name = '';
  String last_name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Account settings"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(children: [
          SizedBox(height: 24.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top:8.0, bottom: 4.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,


              onChanged: (value) {
                email = value;
              },
              decoration: kTextFieldDecorationOrange.copyWith(
                hintText: 'Please enter a valid email address',
              ),
            ),
          ),

          SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top:8.0, bottom: 4.0),
            child: TextField(
              textAlign: TextAlign.center,
              onChanged: (value) {
                display_name = value;
              },
              decoration: kTextFieldDecorationOrange.copyWith(
                hintText: 'Enter your display name',
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top:8.0, bottom: 4.0),
            child: TextField(
              textAlign: TextAlign.center,
              onChanged: (value) {
                first_name = value;
              },
              decoration: kTextFieldDecorationOrange.copyWith(
                hintText: 'First name',
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top:8.0, bottom: 4.0),
            child: TextField(
              textAlign: TextAlign.center,
              onChanged: (value) {
                last_name = value;
              },
              decoration: kTextFieldDecorationOrange.copyWith(
                hintText: 'Last name',
              ),
            ),
          ),
          SizedBox(height: 8.0),

          ProfileMenu(
            text: "Change password",
            icon: Icon(
              Icons.account_circle,
              color: Colors.orange,
              size: 30.0,
            ),
            press:
                () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AccountScreen();
                  },
                ),
              ),
            },
          ),
        ]),
      ),
    );
  }
}
