import 'package:disneyplusdemo/screens/download_screen.dart';
import 'package:disneyplusdemo/screens/home_screen.dart';
import 'package:disneyplusdemo/screens/profile_screen.dart';
import 'package:disneyplusdemo/screens/search_screen.dart';
import 'package:disneyplusdemo/utils/contansts.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int bottomSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Image.network(
            'https://logodownload.org/wp-content/uploads/2020/11/disney-plus-logo-1.png',
            fit: BoxFit.fitHeight,
            height: 50,
          ),
          centerTitle: true,
          backgroundColor: colorFromHex('2d3246'),
          elevation: 0.0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.cast_outlined,
              ),
              iconSize: 30,
            ),
            SizedBox(width: 4)
          ],
        ),
        body: buildPageView(),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 35,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: colorFromHex("1a1d29"),
          type: BottomNavigationBarType.fixed,
          currentIndex: bottomSelectedIndex,
          onTap: (index) {
            bottomTapped(index);
          },
          items: buildBottomNavBarItens(),
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> buildBottomNavBarItens() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text('Home'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        title: Text('Search'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.file_download),
        title: Text('Downloads'),
      ),
      BottomNavigationBarItem(
        icon: Container(
          width: 35,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(1000),
            child: Image.network(
                'https://i.pinimg.com/474x/e4/3d/8b/e43d8b9d446e6bceaef57133ca1a4e38.jpg',
                fit: BoxFit.cover),
          ),
        ),
        title: Text(''),
      )
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        Home(),
        Search(),
        Downloads(),
        Profile(),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }
}
