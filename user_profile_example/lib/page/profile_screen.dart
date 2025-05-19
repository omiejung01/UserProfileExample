import 'package:flutter/material.dart';
import 'package:user_profile_example/page/account_screen.dart';
import 'package:user_profile_example/widget/profile_menu.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const ProfilePic(),
            const SizedBox(height: 20),
            ProfileMenu(
              text: "My Account",
              icon: Icon(
                Icons.account_circle,
                color: Colors.orange,
                size: 30.0,
              ),
              press:
                  () => {
                    Navigator.of(context).push(
                      _createRouteAccount()
                    ),
                  },
            ),
            ProfileMenu(
              text: "Help Center",
              icon: Icon(Icons.help, color: Colors.orange, size: 30.0),
              press: () {},
            ),
            ProfileMenu(
              text: "Log Out",
              icon: Icon(Icons.logout, color: Colors.orange, size: 30.0),
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}


Route _createRouteAccount() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const AccountScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(position: animation.drive(tween), child: child);
    },
  );
}


class ProfilePic extends StatelessWidget {
  const ProfilePic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
              "https://media04.tetraserver.com/uploads/profile_pics/1731420686_candace.png",
            ),
          ),
          Positioned(
            right: -16,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 46,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: const BorderSide(color: Colors.white),
                  ),
                  backgroundColor: const Color(0xFFF5F6F9),
                ),
                onPressed: () {},
                child: Icon(
                  Icons.photo_camera,
                  color: Colors.orange,
                  size: 28.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


