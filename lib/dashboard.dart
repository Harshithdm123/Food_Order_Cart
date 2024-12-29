import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'menu.dart';
void main() {
  runApp(DashboardPage());
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.black),
                SizedBox(width: 5),
                Text(
                  "Home",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              "2XF9+GC5, Tenkamijar, Karnataka",
              style: TextStyle(color: Colors.black54, fontSize: 12),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              // Navigation to Menu Page (if needed)
              {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuPage()),
              );
            }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSearchBar(),
              SizedBox(height: 8),
              _buildFilterButtons(),
              SizedBox(height: 16),
              _buildPromoBanner(),
              SizedBox(height: 16),
              _buildCategories(),
              SizedBox(height: 16),
              Text(
                "Stores Around You",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildStoreCards(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for Stores, Items & More',
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(Icons.search),
        ],
      ),
    );
  }

  Widget _buildFilterButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FilterButton(icon: Icons.sort, label: 'Sort'),
        FilterButton(label: 'Fast Delivery'),
        FilterButton(label: 'New Arrivals'),
        FilterButton(label: 'Rating +'),
      ],
    );
  }

  Widget _buildPromoBanner() {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage('https://via.placeholder.com/300x150'),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          color: Colors.black54,
          padding: EdgeInsets.all(8),
          child: Text(
            "Order from your favourite restaurant on HomZa Cart",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _buildCategories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Categories",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text("See all", style: TextStyle(color: Colors.blue)),
          ],
        ),
        SizedBox(height: 8),
        GridView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          children: [
            CategoryIcon(label: 'Food', icon: Icons.fastfood),
            CategoryIcon(label: 'Bakery & Cake', icon: Icons.cake),
            CategoryIcon(label: 'Ice Creams', icon: Icons.icecream),
            CategoryIcon(label: 'Cool Drinks', icon: Icons.local_drink),
            CategoryIcon(label: 'Groceries', icon: Icons.shopping_basket),
            CategoryIcon(label: 'Fruits & Veg', icon: Icons.local_grocery_store),
            CategoryIcon(label: 'Meat Fish', icon: Icons.set_meal),
            CategoryIcon(label: 'Beauty & Wellness', icon: Icons.spa),
          ],
        ),
      ],
    );
  }

  Widget _buildStoreCards() {
    return Column(
      children: [
        StoreCard(
          imageUrl: 'https://via.placeholder.com/300x150',
          name: 'Laziz Pizza',
          category: 'Food',
          location: 'Moodabidri',
          openTime: '10:30 AM',
          closeTime: '10:00 PM',
          rating: 3.9,
        ),
        StoreCard(
          imageUrl: 'https://via.placeholder.com/300x150',
          name: 'Hotel Sri Sagar',
          category: 'Food',
          location: 'Moodabidri',
          openTime: '08:00 AM',
          closeTime: '09:15 PM',
          rating: 4.0,
        ),

         StoreCard(
          imageUrl: 'https://via.placeholder.com/300x150',
          name: 'Hotel Sri Sagar',
          category: 'Food',
          location: 'Moodabidri',
          openTime: '08:00 AM',
          closeTime: '09:15 PM',
          rating: 4.0,
        ),

         StoreCard(
          imageUrl: 'https://via.placeholder.com/300x150',
          name: 'Hotel Sri Sagar',
          category: 'Food',
          location: 'Moodabidri',
          openTime: '08:00 AM',
          closeTime: '09:15 PM',
          rating: 4.0,
        ),

         StoreCard(
          imageUrl: 'https://via.placeholder.com/300x150',
          name: 'Hotel Sri Sagar',
          category: 'Food',
          location: 'Moodabidri',
          openTime: '08:00 AM',
          closeTime: '09:15 PM',
          rating: 4.0,
        ),
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.local_offer), label: 'Offers'),
        BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'My Orders'),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet), label: 'Wallet'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
      ],
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
    );
  }
}

class FilterButton extends StatelessWidget {
  final IconData? icon;
  final String label;

  FilterButton({this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: icon != null ? Icon(icon, size: 18) : SizedBox.shrink(),
      label: Text(label, style: TextStyle(fontSize: 14)),
    );
  }
}

class CategoryIcon extends StatelessWidget {
  final String label;
  final IconData icon;

  CategoryIcon({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 40, color: Colors.blue),
        SizedBox(height: 5),
        Text(label, textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}

class StoreCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String category;
  final String location;
  final String openTime;
  final String closeTime;
  final double rating;

  StoreCard({
    required this.imageUrl,
    required this.name,
    required this.category,
    required this.location,
    required this.openTime,
    required this.closeTime,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.network(imageUrl, height: 150, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(category, style: TextStyle(color: Colors.grey)),
                SizedBox(height: 5),
                Text("Location: $location"),
                Text("Open: $openTime - Close: $closeTime"),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 16),
                    Text(" $rating", style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
