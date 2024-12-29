import 'package:flutter/material.dart';
import 'menu1/manage_address.dart';
import 'menu1/about.dart';
import 'menu1/favourites.dart';
import 'menu1/refer_and_earn.dart';
import 'menu1/terms_of_service.dart';
import 'menu1/privacy_policy.dart';
import 'menu1/refund_policy.dart';
import 'menu1/logout.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('HARSHITH', style: TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('EDIT', style: TextStyle(color: Colors.yellow)),
          ),
        ],
        elevation: 0,
      ),
      body: ListView(
        children: [
          buildListTile(context, Icons.location_on, 'Manage Address', ManageAddressPage()),
          buildListTile(context, Icons.info, 'About Homza Cart', AboutPage()),
          buildListTile(context, Icons.favorite, 'Favourites', FavouritesPage()),
          buildListTile(context, Icons.card_giftcard, 'Refer and Earn', ReferAndEarnPage()),
          buildListTile(context, Icons.article, 'Terms of Service', TermsOfServicePage()),
          buildListTile(context, Icons.privacy_tip, 'Privacy Policy', PrivacyPolicyPage()),
          buildListTile(context, Icons.receipt, 'Refund Policy', RefundPolicyPage()),
          buildListTile(context, Icons.logout, 'Logout', LogoutPage()),
        ],
      ),
    );
  }

  ListTile buildListTile(BuildContext context, IconData icon, String title, Widget page) {
    return ListTile(
      leading: Icon(icon, color: Colors.yellow),
      title: Text(title),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      ),
    );
  }
}
