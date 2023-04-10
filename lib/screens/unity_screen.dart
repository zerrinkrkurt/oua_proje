import 'package:flutter/material.dart';
import 'package:proje_oua/months2/ocak2.dart';

import '../months2/aralik2.dart';

import 'package:slide_countdown/slide_countdown.dart';


class UnityScreen extends StatelessWidget {
  const UnityScreen({Key? key}) : super(key: key);


  static const String appTitle = 'UNİTY GÖREV TAKİP LİSTESİ';



  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );

  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text(title)


      ),

      body: const Center(
        child: SlideCountdown(
          duration: Duration(days: 30),

          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),

          icon: Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(
              Icons.access_alarm,
              color:Colors.black,
              size: 45,

            ),
          ),
          showZeroValue: true,
          slideAnimationDuration: Duration(milliseconds: 600),
          slideDirection: SlideDirection.up,



          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 45,
            fontWeight: FontWeight.bold,

          ),
        ),
      ),

      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),

              child:
              const Text('Akademi Aylık Görevleri',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),

              ),


            ),
            ListTile(
              title: const Text('Aralık',
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Aralik()));

              },
            ),
            ListTile(
              title: const Text('Ocak',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Ocak()));
              },
            ),

            ListTile(
              title: const Text('Şubat',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text('Mart',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),

              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text('Nisan',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),


              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),


            ListTile(
              title: const Text('Mayıs',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),


            ListTile(
              title: const Text('Haziran',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),


              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),



          ],
        ),
      ),
    );
  }
}

