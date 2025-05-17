import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:user_profile_example/model/user.dart';
import 'package:user_profile_example/page/edit_profile_page.dart';
//import 'package:user_profile_example/utils/user_preferences.dart';
import 'package:user_profile_example/widget/appbar_widget.dart';
import 'package:user_profile_example/widget/button_widget.dart';
import 'package:user_profile_example/widget/numbers_widget.dart';
import 'package:user_profile_example/widget/profile_widget.dart';



class ProfilePage extends StatefulWidget {


  @override
  _ProfilePageState createState() => _ProfilePageState();
}


class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    print('#Text 01');
    final user = User(
      imagePath: 'https://media04.tetraserver.com/uploads/profile_pics/1731420686_candace.png',
      name: 'Candace',
      email: 'sarah.abs@gmail.com',
      about:
      'Certified Personal Trainer and Nutritionist with years of experience in creating effective diets and training plans focused on achieving individual customers goals in a smooth way.',
      isDarkMode: false,
    );

    print('#Text 02');
    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) => Scaffold(
          appBar: buildAppBar(context),
          body: ListView(
            physics: BouncingScrollPhysics(),
            children: /*[
              ProfileWidget(
                imagePath: 'https://media04.tetraserver.com/uploads/profile_pics/1731420686_candace.png',
                onClicked: () async {
                  await Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EditProfilePage()),
                  );
                  setState(() {});
                },
              ),
              const SizedBox(height: 24),
              buildName(user),
              const SizedBox(height: 24),
              Center(child: buildUpgradeButton()),
              const SizedBox(height: 24),
              NumbersWidget(),
              const SizedBox(height: 48),
              buildAbout(user),
            ],*/
            [Text('Hello')]
          ),
        ),
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Upgrade To PRO',
        onClicked: () {},
      );

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}
