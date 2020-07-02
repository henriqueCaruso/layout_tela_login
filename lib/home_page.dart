import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Container input(String texto, IconData icon) {
    return Container(
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.red,
            size: 35,
          ),
          Text(
            texto,
            style: TextStyle(
              color: Color.fromRGBO(100, 100, 100, 0.6),
              fontSize: 25,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      margin: EdgeInsets.fromLTRB(35, 18, 35, 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.all(15),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text(
              "Login to continue!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.grey[700],
              ),
            ),
            input("Username", Icons.person_outline),
            input("Password", Icons.lock_outline),
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.check_box,
                    color: Colors.white,
                    size: 20,
                  ),
                  Text(
                    " Remember me",
                    style: TextStyle(
                      color: Color.fromRGBO(100, 100, 100, 0.6),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              margin: EdgeInsets.fromLTRB(35, 0, 35, 15),
            ),
            Container(
              child: Center(
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              margin: EdgeInsets.fromLTRB(35, 0, 35, 0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.deepOrange, Colors.orangeAccent],
                  tileMode: TileMode.repeated,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.all(15),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        color: Colors.grey[300],
      ),
    );
  }
}
