import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_profile_example/themes.dart';
//import 'package:user_profile_example/utils/user_preferences.dart';
import 'package:user_profile_example/model/user.dart';

AppBar buildAppBar(BuildContext context) {
  User user = User(
    imagePath: 'https://media04.tetraserver.com/uploads/profile_pics/1731420686_candace.png',
    name: 'Candace',
    email: 'sarah.abs@gmail.com',
    about:
    'Certified Personal Trainer and Nutritionist with years of experience in creating effective diets and training plans focused on achieving individual customers goals in a smooth way.',
    isDarkMode: false,

  ); //UserPreferences.getUser();
  final isDarkMode = user.isDarkMode;
  final icon = isDarkMode ? CupertinoIcons.sun_max : CupertinoIcons.moon_stars;
  print('#Text 03');
  return AppBar(
    leading: BackButton(),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      ThemeSwitcher(
        builder: (context) => IconButton(
          icon: Icon(icon),
          onPressed: () {
            final theme = isDarkMode ? MyThemes.lightTheme : MyThemes.darkTheme;

            final switcher = ThemeSwitcher.of(context);
            switcher.changeTheme(theme: theme);

            //final newUser = myUser.copy(isDarkMode: !isDarkMode);
            //UserPreferences.setUser(newUser);
          },
        ),
      ),
    ],
  );
}


