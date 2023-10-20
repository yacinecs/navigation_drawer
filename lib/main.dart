import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
      appBar: AppBar(
        title: const Text('Yacine'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            _build(),
            build2(icon: Icons.home_rounded, title: 'Home', tap:
            ()=> Navigator.pop(context)
            ),
            build2(icon: Icons.notifications, title: 'Notification', tap:
                ()=> Navigator.pushNamed(context,"Notification")
            ),
            build2(icon: Icons.person, title: 'Profile', tap:
                ()=> Navigator.pushNamed(context,"Profile")
            ),
            build2(icon: Icons.settings, title: 'Settings', tap:
                ()=> Navigator.pushNamed(context,"Settings")
            ),
          ],
        ),
      ),
      ), );
  }

  _build() {
    return const DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.black,
        ), child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
            ),
            SizedBox(height: 20),
            Text(
              'Oumouadene Yacine',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            ),
          ],
    ),
      );
  }
  build2({required IconData icon,required String title,required GestureTapCallback tap}){
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: tap,
    );

  }
}