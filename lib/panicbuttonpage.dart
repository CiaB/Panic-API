import 'package:flutter/material.dart';
import 'rescueteam.dart';

class PanicButton extends StatefulWidget {
  @override
  _PanicButtonState createState() => _PanicButtonState();
}

class _PanicButtonState extends State<PanicButton> {
  int _selectedIndex = 0;
  //final List<Widget> _children = [];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
        centerTitle: true,
        title: Text("PANIC BUTTON", style: TextStyle(color: Color(0xFFFFFFFF))),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.red[900],
              shape: CircleBorder(),
              elevation: 30,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RescueTeam()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(100),
                child: Text(
                  "HELP ME!",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange[900],
        onTap: _onItemTapped,
      ),
    );
  }
}
