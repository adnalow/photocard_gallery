import 'package:flutter/material.dart';

class ImageContainer extends StatefulWidget {
  final String imageName; // This is the image file name passed as a parameter

  const ImageContainer({super.key, required this.imageName});

  @override
  State<ImageContainer> createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: const EdgeInsets.only(top:20 ,right: 2 ,left:2),
      child: Stack(
        children: [
          Center(
            child: Container(
              width: 160,
              height: 180,
              decoration: BoxDecoration(
                color:  const Color(0xff14919B),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3), // Shadow color
                    offset: const Offset(0, 4), // Shadow position
                    blurRadius: 8, // Shadow blur radius
                    spreadRadius: 5, // Shadow spread radius
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: 160,
              height: 160,
              child: Image.asset('assets/images/${widget.imageName}.jpg'), // Use the image name passed
            ),
          ),
        ],
      ),
    );
  }
}
