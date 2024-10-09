import 'package:flutter/material.dart';
// import 'package:review4/pages/setting.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  void _onItemTap(int index) {
    setState(() {
      index = index;
    });
  }

  static List<Widget> _pages = [
    Icon(
      Icons.home,
      size: 100,
    ),
    Icon(
      Icons.chat_bubble,
      size: 100,
    ),
    Icon(
      Icons.call,
      size: 100,
    ),
    Icon(
      Icons.camera,
      size: 100,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blueAccent,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.black,
          currentIndex: index,
          onTap: _onItemTap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "Telpon",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_outlined),
              label: "Camera",
            ),
          ]),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/200/300'),
              ),
              accountName: Text("Praktikum Mobile"),
              accountEmail: Text('mobile@gmail.com'),
              decoration: BoxDecoration(color: Colors.indigo),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Cari'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Halaman Beranda"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/account');
            },
            icon: const Icon(
              Icons.menu,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/setting');
            },
            icon: const Icon(
              Icons.settings,
              size: 30,
            ),
          ),
        ],
      ),
      body: Center(
        
        child: ElevatedButton(
          child: const Text('Pindah Screen'),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) {
            //       return const Setting();
            //     },
            //   ),
            // );
            // Navigator.pushReplacement<void, void>(
            //   context,
            //   MaterialPageRoute<void>(
            //     builder: (BuildContext context) => const Setting(),
            //   ),
            // );
            Navigator.pushNamed(context, '/setting');
          },
        ),
      ),
    );
  }
}
