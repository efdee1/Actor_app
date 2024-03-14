import 'package:actor_app/UI/video_player_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


  class DashBoard extends StatefulWidget {
    static String routeName = "/dashBoard";
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
  
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: _getScreen(_selectedIndex),
        ),
      bottomNavigationBar: BottomNavigationBar(
         type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Colors.black),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: ImageIcon(
              AssetImage("assets/Group.png"),
              color: _selectedIndex == 0 ? Colors.black : Color(0xFFADAFBB),
              size: 24,
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/bag.png"),
              color: _selectedIndex == 1 ? Colors.black : Color(0xFFADAFBB),
              size: 24,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_rounded, color: Color(0xFFEB545D),size: 40.sp,),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/comment.png"),
              color: _selectedIndex == 3 ? Colors.black : Color(0xFFADAFBB),
              size: 24,
            ),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/people.png"),
              color: _selectedIndex == 4 ? Colors.black : Color(0xFFADAFBB),
              size: 24,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

  Widget _getScreen(int index) {
    switch (index) {
      case 0:
        return VideoListItem();
      case 1:
        return Text('Search Page');
      case 2:
        return Text('Add Content Page');
      case 3:
        return Text('Notifications Page');
      case 4:
        return Text('Profile Page');
      default:
        return Text('Invalid Page');
    }
  }
