import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/utils/global_variables.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void navigationTapped(int page){
    pageController.jumpToPage(page);
  }

  void OnPageChanged(int page){
    setState(() {
      _page = page;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller:  pageController,
        onPageChanged: OnPageChanged,
        children:  homeScreenItem,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: mobileBackgroundColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
                Icons.home,
              color: _page == 0? primaryColor: secondaryColor,
            ),
            label: '',
            backgroundColor: mobileBackgroundColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: _page == 1? primaryColor: secondaryColor,
            ),
            label: '',
            backgroundColor: mobileBackgroundColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle,
              color: _page == 2? primaryColor: secondaryColor,
            ),
            label: '',
            backgroundColor: mobileBackgroundColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: _page == 3? primaryColor: secondaryColor,
            ),
            label: '',
            backgroundColor: mobileBackgroundColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: _page == 4? primaryColor: secondaryColor,
            ),
            label: '',
            backgroundColor: mobileBackgroundColor,
          ),
        ],
        onTap: navigationTapped,
      ),
    );
  }
}

// MobileScreenLayout
