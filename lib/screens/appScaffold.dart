import'package:flutter/material.dart';
import 'package:medilitics/screens/report_page.dart';
import 'package:medilitics/screens/patientScreen.dart';
import 'package:medilitics/screens/profileScreen.dart';
import 'package:medilitics/screens/consultScreen.dart';
import 'package:medilitics/utilities/constants.dart';

class AppScaffold extends StatefulWidget {
  static String id = '/AppScaffold';

  const AppScaffold({Key? key}) : super(key: key);

  @override
  _AppScaffoldState createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  int _currentIndex = 0;
  final List<Widget> _routes = [
    ReportScreen(),
    PatientScreen(),
    ConsultScreen(),
    ProfileScreen(),
  ];
  final List<BottomNavigationBarItem> _bottomNavigationBarItems = [
    BottomNavigationBarItem(
      icon: Image.asset('images/Pulse.png'),
      label: 'Reports',
      activeIcon: Image.asset('images/Pulse.png',color: myActiveColor,),
    ),
    BottomNavigationBarItem(
      icon: Image.asset('images/Heartbeat.png'),
      label: 'Patients',
      activeIcon: Image.asset('images/Heartbeat.png',color: myActiveColor,),
    ),
    BottomNavigationBarItem(
      icon: Image.asset('images/Chat.png'),
      label: 'Consult',
      activeIcon: Image.asset('images/Chat.png',color: myActiveColor,),
    ),
    BottomNavigationBarItem(
      icon: Image.asset('images/User.png'),
      label: 'You',
      activeIcon: Image.asset('images/User.png',color: myActiveColor,),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F1F1),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFF919197),
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(
          color: greyBlackColor,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle:TextStyle(
          color: greyBlackColor,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        iconSize: 30,
        items:_bottomNavigationBarItems,
        currentIndex: _currentIndex,
        onTap: (index)=>setState(()=> _currentIndex=index),
      ),
      body: IndexedStack(
          index:_currentIndex,
        children: _routes,
      ),
    );
  }
}
