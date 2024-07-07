import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:packetexample/screen/about_us_screen.dart';
import 'package:packetexample/screen/contact_us_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> sliders = [
    "images/slider_a.jpg",
    "images/slider_b.jpg",
    "images/slider_c.jpg",
    "images/slider_d.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    image: AssetImage('images/slider_a.jpg'),
                    fit: BoxFit.cover,
                  )),
              child: Text('วัดกู่เต้า'),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ContactUsScreen(),
                ));
              },
              title: const Text('ข่าวสาร'),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AboutUsScreen(),
                ));
              },
              title: const Text('เกี่ยวกับเรา'),
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text('Home')),
      body: Container(
          child: Swiper(
        autoplay: true,
        itemCount: sliders.length,
        itemBuilder: (context, index) => Image.asset(sliders[index]),
      )),
      bottomNavigationBar:
          BottomNavigationBar(showUnselectedLabels: true, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.blue),
      ]),
    );
  }
}
