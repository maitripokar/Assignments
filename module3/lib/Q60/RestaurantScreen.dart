import 'package:flutter/material.dart';

class RestaurantScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios, color: Colors.black),
        title: Text('Restaurant', style: TextStyle(color: Colors.black)),
        actions: [
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        children: [
          // Restaurant Info Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                Icon(Icons.timer, color: Colors.grey),
                SizedBox(width: 8),
                Text('20-30min', style: TextStyle(color: Colors.black)),
                Spacer(),
                Text('2.4km', style: TextStyle(color: Colors.black)),
                Spacer(),
                Text('Restaurant', style: TextStyle(color: Colors.black)),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange),
                    Text('4.7', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ],
            ),
          ),
          // Categories Section
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildCategoryTab('Recommend', isActive: true),
                  buildCategoryTab('Popular'),
                  buildCategoryTab('Noodles'),
                  buildCategoryTab('Pizza'),
                  buildCategoryTab('Burger'),
                  buildCategoryTab('Soup'),
                ],
              ),
            ),
          ),
          // Menu Items
          Expanded(
            child: ListView(
              children: [
                buildMenuItem(
                    'Soba Soup', 'No.1 in sales', '\$12', 'assets/6.PNG'),
                buildMenuItem('Sei Ua Samun Phrai', 'No.1 in sales', '\$12',
                    'assets/7.PNG'),
                buildMenuItem('Ratatouille Pasta', 'No.1 in sales', '\$12',
                    'assets/ratatouille_pasta.jpg'),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        child: Icon(Icons.shopping_bag),
      ),
    );
  }

  Widget buildCategoryTab(String title, {bool isActive = false}) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isActive ? Colors.orange : Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isActive ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(
      String title, String salesInfo, String price, String imagePath) {
    return Container(
      margin: EdgeInsets.all(16),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/6.PNG'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  salesInfo,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  price,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 110),
            child: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
