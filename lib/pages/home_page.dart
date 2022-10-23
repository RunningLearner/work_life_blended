import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

void FlutterDialog() {

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title:
          Row(
            children: const[
              Icon(Icons.access_alarm),
              Text('WORABLE', style: TextStyle(fontSize: 14, letterSpacing: 3),),
            ],
          ),

          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('홍길동님, 환영합니다!',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FloatingActionButton.large(
                    shape: CircleBorder(
                        side: BorderSide(color: Colors.white, width: 2)),
                    onPressed: () => FlutterDialog(),
                    backgroundColor: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.directions_walk,
                          color: Colors.white,
                        ),
                        Text(
                          'working',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  FloatingActionButton.large(
                    shape: CircleBorder(
                        side: BorderSide(color: Colors.white, width: 2)),
                    onPressed: () {},
                    backgroundColor: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.accessibility_new,
                          color: Colors.white,
                        ),
                        Text('resting',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar:BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.watch_later_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.text_snippet),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}