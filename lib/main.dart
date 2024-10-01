import 'package:flutter/material.dart';
import 'package:photocard_gallery/image_container.dart';
import 'package:photocard_gallery/name_container.dart';
import 'package:photocard_gallery/group_logo_container.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff213A57),
        appBarTheme: const AppBarTheme(
          color: Color(0xff0B6477),
        ),
      ),
      home: const Homescreen(),
    );
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Masterlist ng mga Bias ko',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10 , bottom:5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  NameContainer(name: 'Wonyoung', group: 'Ive'),
                  GroupLogoContainer(groupName: 'ive'),
                ]
              )
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ImageContainer(imageName: 'wony1'),
                  ImageContainer(imageName: 'wony2'),
                  ImageContainer(imageName: 'wony3'),
                  ImageContainer(imageName: 'wony4'),                 
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10 , bottom:5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  NameContainer(name: 'Haerin', group: 'Newjeans'),
                  GroupLogoContainer(groupName: 'newjeans')
                ]
              )
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ImageContainer(imageName: 'haerin1'),
                  ImageContainer(imageName: 'haerin2'),
                  ImageContainer(imageName: 'haerin3'),
                  ImageContainer(imageName: 'haerin4'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10 , bottom:5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  NameContainer(name: 'Hanna', group: 'Fifty-Fifty'),
                  GroupLogoContainer(groupName: 'fifty')
                ]
              )
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ImageContainer(imageName: 'hana1'),
                  ImageContainer(imageName: 'hana2'),
                  ImageContainer(imageName: 'hana3'),
                  ImageContainer(imageName: 'hana4'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


