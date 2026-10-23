import 'package:animal_smile/components/profile_overview_card.dart';
import 'package:animal_smile/utils/main_button.dart';
import 'package:animal_smile/utils/text_link_with_forward_arrow.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List user = ["Farmer", "Nicky", "lib/images/profile2.jpg"];
  final List _profilesettings = [
    "Account",
    "Wallet",
    "Visit history",
    "Report",
  ];
  final List _securitysettings = [
    "security",
    "privacy policy",
    "Help and support",
    "Terms of use",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text("Profile"),
      ),
      backgroundColor: Colors.white,
      // profile overview
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            ProfileOverviewCard(role: user[0], name: user[1], userIMG: user[2]),
            //PROFILE
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text("Profile")],
            ),
            // PROFILE SETTINGS
            Container(
              child: SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: _profilesettings.length,
                  itemBuilder: (context, index) => TextLinkWithForwardArrow(
                    screenName: _profilesettings[index],
                  ),
                ),
              ),
            ),
            // SECURITY SETTINGS
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text("Setting")],
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                      itemCount: _securitysettings.length,
                      itemBuilder: (context, index) => TextLinkWithForwardArrow(
                        screenName: _securitysettings[index],
                      ),
                    ),
                  ),
                  Text("Delete account"),
                  MainButton(text: "Logout", onTap: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
