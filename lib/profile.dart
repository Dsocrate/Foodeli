import'package:flutter/material.dart';
import 'package:foodelo/homepage.dart';
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context, MaterialPageRoute(
                builder:(BuildContext context){
                  return MyHome();
                } ));
          },
        ),
        title: Center(
          child: Text('COFFE APP'),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('images/shay.JPG'),
            ),
            Text(
              'SOCRATIC',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'USER',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 20.0,
                color: Colors.orange,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,

              ),
            ),
            SizedBox(
              height: 20,
              child: Divider(
                color: Colors.grey.shade100,
              ),

            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 20.0,
                  color: Colors.orange,
                ),
                title: Text(
                  '+2349015447160',
                  style: TextStyle(
                    fontFamily:'Source Sans Pro',
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,

                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.location_on,
                  size: 22.0,
                  color: Colors.orange,
                ),
                title: Text(
                  'Ugbowo,Benin City',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}